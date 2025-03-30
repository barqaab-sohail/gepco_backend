<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class GridStation extends Model
{
    protected $fillable = ['name', 'voltage', 'company_id'];

    public function company(): BelongsTo
    {
        return $this->belongsTo(Company::class);
    }

    public function feeders()
    {
        return $this->hasMany(Feeder::class);
    }
}
