<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CircleResource\Pages;
use App\Filament\Resources\CircleResource\RelationManagers;
use App\Models\Circle;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use App\Models\Company;

class CircleResource extends Resource
{
    protected static ?string $model = Circle::class;

    protected static ?int $navigationSort = 3;

    protected static ?string $navigationGroup = 'Companies';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Select::make('company_id')
                    ->label('Company')->required()->rules(['required'])
                    ->options(Company::all()->pluck('name', 'id')),
                TextInput::make('name')->label('Circle Name')->required()->rules(['required']),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Circle Name'),
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
            'index' => Pages\ListCircles::route('/'),
            'create' => Pages\CreateCircle::route('/create'),
            'edit' => Pages\EditCircle::route('/{record}/edit'),
        ];
    }
}
