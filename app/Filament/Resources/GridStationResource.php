<?php

namespace App\Filament\Resources;

use App\Filament\Resources\GridStationResource\Pages;
use App\Filament\Resources\GridStationResource\RelationManagers;
use App\Models\GridStation;
use App\Models\Company;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Forms\Components\Select;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;

class GridStationResource extends Resource
{
    protected static ?string $model = GridStation::class;

    protected static ?int $navigationSort = 2;

    protected static ?string $navigationGroup = 'Companies';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')->required()->rules(['required']),
                TextInput::make('voltage')->required()->rules(['required']),
                TextInput::make('location')->required()->rules(['required']),
                Select::make('company_id')
                    ->label('Company')->required()->rules(['required'])
                    ->options(Company::all()->pluck('name', 'id'))
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Grid Station Name'),
                TextColumn::make('voltage')->label('Voltage'),
                TextColumn::make('company.name')->label('Company'),
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
            'index' => Pages\ListGridStations::route('/'),
            'create' => Pages\CreateGridStation::route('/create'),
            'edit' => Pages\EditGridStation::route('/{record}/edit'),
        ];
    }
}
