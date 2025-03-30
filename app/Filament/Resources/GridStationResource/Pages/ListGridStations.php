<?php

namespace App\Filament\Resources\GridStationResource\Pages;

use App\Filament\Resources\GridStationResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListGridStations extends ListRecords
{
    protected static string $resource = GridStationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
