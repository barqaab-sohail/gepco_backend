<?php

namespace App\Filament\Resources\GridStationResource\Pages;

use App\Filament\Resources\GridStationResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditGridStation extends EditRecord
{
    protected static string $resource = GridStationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
