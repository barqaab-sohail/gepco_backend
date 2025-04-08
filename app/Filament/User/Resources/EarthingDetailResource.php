<?php

namespace App\Filament\User\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\EarthingDetail;
use Barryvdh\DomPDF\Facade\Pdf;
use Filament\Resources\Resource;
use Illuminate\Support\Collection;
use Filament\Tables\Actions\Action;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Support\Facades\Storage;
use Filament\Tables\Columns\ImageColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\User\Resources\EarthingDetailResource\Pages;
use App\Filament\User\Resources\EarthingDetailResource\RelationManagers;


class EarthingDetailResource extends Resource
{
    protected static ?string $model = EarthingDetail::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }


    public static function canCreate(): bool
    {
        return false;
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('gridStation.name'),
                TextColumn::make('circle.name'),
                TextColumn::make('division.name'),
                TextColumn::make('subDivision.name'),
                TextColumn::make('feeder.name'),
                TextColumn::make('category.name'),
                TextColumn::make('tage_no'),
                TextColumn::make('chemical'),
                TextColumn::make('rod'),
                TextColumn::make('earth_wire'),
                TextColumn::make('earthing_before'),
                TextColumn::make('earthing_after'),
                ImageColumn::make('images.path'),

            ])->recordUrl(null)
            ->filters([
                // Text input filter for tag number

                Tables\Filters\MultiSelectFilter::make('gridStation')
                    ->relationship('gridStation', 'name')
                    ->searchable()
                    ->preload(),
                // Multiple select filter for Circle
                Tables\Filters\MultiSelectFilter::make('circle')
                    ->relationship('circle', 'name')
                    ->searchable()
                    ->preload(),

                // Multiple select filter for Division
                Tables\Filters\MultiSelectFilter::make('division')
                    ->relationship('division', 'name')
                    ->searchable()
                    ->preload(),

                // Multiple select filter for Sub Division
                Tables\Filters\MultiSelectFilter::make('subDivision')
                    ->relationship('subDivision', 'name')
                    ->searchable()
                    ->preload(),

                // Multiple select filter for Tag No
                Tables\Filters\MultiSelectFilter::make('tage_no')
                    ->options(
                        EarthingDetail::query()
                            ->distinct()
                            ->pluck('tage_no', 'tage_no')
                            ->sort()
                            ->toArray()
                    )
                    ->searchable(),

                // Tables\Filters\Filter::make('tage_no')
                //     ->form([Forms\Components\TextInput::make('tage_no')])
                //     ->query(function (Builder $query, array $data): Builder {
                //         return $query
                //             ->when(
                //                 $data['tage_no'],
                //                 fn(Builder $query, $tage_no): Builder => $query->where('tage_no', 'like', "%{$tage_no}%")
                //             );
                //     }),

                // Select filter for feeder
                Tables\Filters\SelectFilter::make('feeder_id')
                    ->relationship('feeder', 'name')
                    ->searchable()
                    ->preload(),

                // Date range filter
                Tables\Filters\Filter::make('created_at')
                    ->form([
                        Forms\Components\DatePicker::make('created_from'),
                        Forms\Components\DatePicker::make('created_until'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['created_from'],
                                fn(Builder $query, $date): Builder => $query->whereDate('created_at', '>=', $date)
                            )
                            ->when(
                                $data['created_until'],
                                fn(Builder $query, $date): Builder => $query->whereDate('created_at', '<=', $date)
                            );
                    }),

                Tables\Filters\Filter::make('rod_count')
                    ->form([
                        Forms\Components\TextInput::make('min')
                            ->numeric()
                            ->placeholder('Min rods'),
                        Forms\Components\TextInput::make('max')
                            ->numeric()
                            ->placeholder('Max rods'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['min'],
                                fn(Builder $query, $min): Builder => $query->where('rod', '>=', $min)
                            )
                            ->when(
                                $data['max'],
                                fn(Builder $query, $max): Builder => $query->where('rod', '<=', $max)
                            );
                    }),
                Tables\Filters\MultiSelectFilter::make('categories')
                    ->relationship('category', 'name')
                    ->preload()
                    ->searchable()

                // Ternary filter for quick toggles
                // Tables\Filters\TernaryFilter::make('has_images')
                //     ->label('Has Images?')
                //     ->nullable()
                //     ->trueLabel('With images')
                //     ->falseLabel('Without images')
                //     ->queries(
                //         true: fn(Builder $query) => $query->whereHas('images'),
                //         false: fn(Builder $query) => $query->whereDoesntHave('images'),
                //         blank: fn(Builder $query) => $query,
                //     ),
            ])
            ->headerActions([
                Action::make('exportToPdf')
                    ->label('Export to PDF')
                    ->action(function ($record) {
                        $data = EarthingDetail::all();

                        // Generate HTML with proper meta tag
                        $html = view('pdf.earthing', compact('data'))->render();

                        // Create PDF with explicit encoding
                        $pdf = Pdf::loadHtml($html);
                        $pdf->setPaper('A4', 'landscape');
                        $pdf->setOption('defaultFont', 'dejavu sans');
                        $pdf->setOption('isHtml5ParserEnabled', true);
                        $pdf->setOption('isRemoteEnabled', true);

                        return response()->streamDownload(
                            fn() => print($pdf->output()),
                            'earthing_report.pdf',
                            ['Content-Type' => 'application/pdf']
                        );
                    })
            ])
            ->actions([
                //  Tables\Actions\EditAction::make(),



            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    //Tables\Actions\DeleteBulkAction::make(), // Optional

                    // 👇 New Bulk Action for PDF Export
                    Tables\Actions\BulkAction::make('exportSelectedToPdf')
                        ->label('Export Selected to PDF')
                        ->icon('heroicon-o-document-arrow-down')
                        ->action(function (Collection $records) {
                            $data = $records; // Only selected records

                            $pdf = Pdf::loadView('pdf.earthing', compact('data'))
                                ->setPaper('A4', 'landscape')
                                ->setOption('defaultFont', 'dejavu sans');

                            return response()->streamDownload(
                                fn() => print($pdf->output()),
                                'selected_earthing_report.pdf'
                            );
                        })
                        ->deselectRecordsAfterCompletion(), // Optional
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListEarthingDetails::route('/'),
            'create' => Pages\CreateEarthingDetail::route('/create'),
            'edit' => Pages\EditEarthingDetail::route('/{record}/edit'),
        ];
    }
}
