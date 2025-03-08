<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubDivision extends Model
{
    protected $fillable = ['name', 'division_id'];

    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    public function company()
    {

        // reverse hasOneThrough
        return $this->hasOneThrough(Company::class, Division::class, 'id', 'id',  'division_id', 'company_id');
    }
}