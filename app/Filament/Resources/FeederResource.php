<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FeederResource\Pages;
use App\Filament\Resources\FeederResource\RelationManagers;
use Filament\Forms\Get;
use App\Models\GridStation;
use App\Models\Feeder;
use App\Models\Division;
use App\Models\Circle;
use App\Models\SubDivision;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;

class FeederResource extends Resource
{
    protected static ?string $model = Feeder::class;

    protected static ?int $navigationSort = 6;

    protected static ?string $navigationGroup = 'Companies';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('grid_station_id')
                    ->label('Grid Station')
                    ->options(GridStation::all()->pluck('name', 'id')),
                Select::make('circle_id')
                    ->label('Circle')
                    ->options(Circle::all()->pluck('name', 'id'))->live()
                    ->searchable()->required()->rules(['required']),
                Select::make('division_id')
                    ->label('Division')
                    ->disabled(fn(Get $get): bool => !filled($get('circle_id')))
                    ->options(fn(Get $get) => Division::where('circle_id', (int) $get('circle_id'))->pluck('name', 'id'))
                    ->required()->live(),
                Select::make('sub_division_id')
                    ->label('Sub Division')
                    ->disabled(fn(Get $get): bool => !filled($get('division_id')))
                    ->options(fn(Get $get) => SubDivision::where('division_id', (int) $get('division_id'))->pluck('name', 'id'))
                    ->required(),
                TextInput::make('name')->required()->rules(['required']),
                TextInput::make('feeder_code')->required()->rules(['required']),
                TextInput::make('category')->required()->rules(['required']),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('gridStation.name')->label('Grid Station Name'),
                TextColumn::make('circle.name')->label('Circle Name'),
                TextColumn::make('division.name')->label('Division Name'),
                TextColumn::make('subDivision.name')->label('Sub Division Name'),
                TextColumn::make('name')->label('Feeder Name'),
                TextColumn::make('feeder_code')->label('Feeder Code'),
                TextColumn::make('category')->label('Category'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListFeeders::route('/'),
            'create' => Pages\CreateFeeder::route('/create'),
            'edit' => Pages\EditFeeder::route('/{record}/edit'),
        ];
    }
}
