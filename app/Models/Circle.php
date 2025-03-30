<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Circle extends Model
{
    protected $fillable = ['name', 'company_id'];

    public function divisions()
    {
        return $this->hasMany(Division::class);
    }
    public function company(): BelongsTo
    {
        return $this->belongsTo(Company::class);
    }
}
