<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Company;
use Filament\Forms\Get;
use App\Models\Division;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\SubDivision;
use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\SubDivisionResource\Pages;
use App\Filament\Resources\SubDivisionResource\RelationManagers;

class SubDivisionResource extends Resource
{
    protected static ?string $model = SubDivision::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')->required()->rules(['required']),
                Select::make('company_id')
                    ->label('Company')
                    ->options(Company::all()->pluck('name', 'id'))->live()
                    ->searchable()->required()->rules(['required']),
                Select::make('division_id')
                    ->label('Division')
                    ->disabled(fn(Get $get): bool => ! filled($get('company_id')))
                    ->options(fn(Get $get) => Division::where('company_id', (int) $get('company_id'))->pluck('name', 'id'))
                    ->required(),

                // ->options(Division::all()->pluck('name', 'id'))
                // ->searchable()->required()->rules(['required']),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Sub Division Name'),
                TextColumn::make('division.name')->label('Division Name'),
                TextColumn::make('company.name')->label('Company Name'),
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
            'index' => Pages\ListSubDivisions::route('/'),
            'create' => Pages\CreateSubDivision::route('/create'),
            'edit' => Pages\EditSubDivision::route('/{record}/edit'),
        ];
    }
}