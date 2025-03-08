<?php

namespace App\Filament\Resources\TowerStructureResource\Pages;

use App\Filament\Resources\TowerStructureResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTowerStructure extends EditRecord
{
    protected static string $resource = TowerStructureResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
