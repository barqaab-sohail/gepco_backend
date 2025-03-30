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
use App\Models\Circle;
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

    protected static ?int $navigationSort = 5;

    protected static ?string $navigationGroup = 'Companies';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Select::make('company_id')
                    ->label('Company')
                    ->options(Company::all()->pluck('name', 'id'))->live()
                    ->searchable()->required()->rules(['required']),
                Select::make('circle_id')
                    ->label('Circle')
                    ->disabled(fn(Get $get): bool => !filled($get('company_id')))
                    ->options(fn(Get $get) => Circle::where('company_id', (int) $get('company_id'))->pluck('name', 'id'))
                    ->required()->live(),
                Select::make('division_id')
                    ->label('Division')
                    ->disabled(fn(Get $get): bool => !filled($get('circle_id')))
                    ->options(fn(Get $get) => Division::where('circle_id', (int) $get('circle_id'))->pluck('name', 'id'))
                    ->required(),
                TextInput::make('name')->required()->rules(['required']),
                TextInput::make('code')->required()->rules(['required'])

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