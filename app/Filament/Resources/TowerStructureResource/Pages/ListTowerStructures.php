<?php

namespace App\Filament\Resources\TowerStructureResource\Pages;

use App\Filament\Resources\TowerStructureResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTowerStructures extends ListRecords
{
    protected static string $resource = TowerStructureResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
