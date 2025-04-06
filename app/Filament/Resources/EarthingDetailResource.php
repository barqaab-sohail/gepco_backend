<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Category;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Forms\Get;
use App\Models\Company;
use App\Models\Circle;
use App\Models\Division;
use App\Models\SubDivision;
use App\Models\EarthingDetail;
use App\Models\TowerStructure;
use App\Models\Feeder;
use Filament\Resources\Resource;
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
                    ->required()->live(),
                Select::make('sub_division_id')
                    ->label('Sub Division')
                    ->disabled(fn(Get $get): bool => !filled($get('division_id')))
                    ->options(fn(Get $get) => SubDivision::where('division_id', (int) $get('division_id'))->pluck('name', 'id'))
                    ->required()->live(),

                Select::make('feeder_id')
                    ->label('Feeder Name')
                    ->disabled(fn(Get $get): bool => !filled($get('sub_division_id')))
                    ->options(fn(Get $get) => Feeder::where('sub_division_id', (int) $get('sub_division_id'))->pluck('name', 'id'))
                    ->required(),

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
                TextColumn::make('feeder.name'),
                ImageColumn::make('images.path'),
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
            'index' => Pages\ListEarthingDetails::route('/'),
            'create' => Pages\CreateEarthingDetail::route('/create'),
            'edit' => Pages\EditEarthingDetail::route('/{record}/edit'),
        ];
    }
}
