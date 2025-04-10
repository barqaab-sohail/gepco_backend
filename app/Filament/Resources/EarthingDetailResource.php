<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Circle;
use App\Models\Feeder;
use App\Models\Company;
use Filament\Forms\Get;
use App\Models\Category;
use App\Models\Division;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\SubDivision;
use App\Models\EarthingDetail;
use App\Models\TowerStructure;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Database\Eloquent\Model;
use Filament\Resources\Resource;
use Filament\Tables\Actions\Action;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Fieldset;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\ImageColumn;
use Filament\Forms\Components\FileUpload;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\EarthingDetailResource\Pages;
use App\Filament\Resources\EarthingDetailResource\RelationManagers;

class EarthingDetailResource extends Resource
{
    protected static ?string $model = EarthingDetail::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Select::make('company_id')
                    ->label('Company')
                    ->options(
                        fn(Get $get, ?EarthingDetail $record) =>
                        Company::query()->pluck('name', 'id') // load all for company
                    )
                    ->searchable()
                    ->live()
                    ->default(fn(?EarthingDetail $record) => $record?->company?->id),

                Select::make('circle_id')
                    ->label('Circle')
                    ->options(
                        fn(Get $get, ?EarthingDetail $record) =>
                        Circle::where('id', $record?->circle?->id)->pluck('name', 'id')
                    )
                    ->searchable()
                    ->live()
                    ->disabled(fn(Get $get) => !filled($get('feeder_id')))
                    ->default(fn(?EarthingDetail $record) => $record?->circle?->id),

                Select::make('division_id')
                    ->label('Division')
                    ->options(
                        fn(Get $get, ?EarthingDetail $record) =>
                        Division::where('id', $record?->division->id)->pluck('name', 'id')
                    )
                    ->searchable()
                    ->live()
                    ->disabled(fn(Get $get) => !filled($get('feeder_id')))
                    ->default(fn(?EarthingDetail $record) => $record?->division->id),

                Select::make('sub_division_id')
                    ->label('Sub Division')
                    ->options(
                        fn(Get $get, ?EarthingDetail $record) =>
                        SubDivision::where('id',  $record?->subDivision->id)->pluck('name', 'id')
                    )
                    ->searchable()
                    ->live()
                    ->disabled(fn(Get $get) => !filled($get('feeder_id')))
                    ->default(fn(?EarthingDetail $record) => $record?->subDivision->id),

                Select::make('feeder_id')
                    ->label('Feeder')
                    ->options(
                        fn(Get $get, ?EarthingDetail $record) =>
                        Feeder::where('id', $get('feeder_id') ?? $record?->feeder_id)->pluck('name', 'id')
                    )
                    ->searchable()
                    ->required()
                    ->rules(['required'])
                    ->disabled(fn(Get $get) => !filled($get('feeder_id')))
                    ->default(fn(?EarthingDetail $record) => $record?->feeder_id),

                Select::make('category_id')
                    ->label('Category')
                    ->options(Category::all()->pluck('name', 'id'))
                    ->searchable()->required()->rules(['required']),
                Select::make('tower_structure_id')
                    ->label('Structure Type')
                    ->options(TowerStructure::all()->pluck('name', 'id'))
                    ->searchable()->required()->rules(['required']),
                TextInput::make('location'),
                TextInput::make('latitude')->required()->rules(['required']),
                TextInput::make('longitude')->required()->rules(['required']),
                TextInput::make('tage_no')->required()->rules(['required']),
                TextInput::make('chemical')->required()->rules(['required']),
                TextInput::make('rod')->required()->rules(['required']),
                TextInput::make('earth_wire')->required()->rules(['required']),
                TextInput::make('earthing_before'),
                TextInput::make('earthing_after')->required()->rules(['required']),
                Fieldset::make('image')->label('')
                    ->relationship('image')
                    ->schema([
                        FileUpload::make('path')->label('Upload Image')->disk('public')->directory('images')->required()->rules(['required']),
                    ]),
            ]);
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

            ])
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
