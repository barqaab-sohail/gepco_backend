<?php

namespace App\Filament\User\Resources\EarthingDetailResource\Pages;

use App\Filament\User\Resources\EarthingDetailResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListEarthingDetails extends ListRecords
{
    protected static string $resource = EarthingDetailResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
