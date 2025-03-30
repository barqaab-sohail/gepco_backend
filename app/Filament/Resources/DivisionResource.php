<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Company;
use App\Models\Circle;
use Filament\Forms\Get;
use App\Models\Division;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\DivisionResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\DivisionResource\RelationManagers;

class DivisionResource extends Resource
{
    protected static ?string $model = Division::class;

    protected static ?int $navigationSort = 4;

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
                    ->required(),
                TextInput::make('name')->required()->rules(['required']),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Division Name'),
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
            'index' => Pages\ListDivisions::route('/'),
            'create' => Pages\CreateDivision::route('/create'),
            'edit' => Pages\EditDivision::route('/{record}/edit'),
        ];
    }
}