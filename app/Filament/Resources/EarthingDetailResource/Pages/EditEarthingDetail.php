<?php

namespace App\Filament\Resources\EarthingDetailResource\Pages;

use App\Filament\Resources\EarthingDetailResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditEarthingDetail extends EditRecord
{
    protected static string $resource = EarthingDetailResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
