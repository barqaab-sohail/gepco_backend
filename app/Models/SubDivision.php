<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubDivision extends Model
{
    protected $fillable = ['name', 'division_id', 'code', 'company_id'];



    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    // ## if company_id in Division Table then it work as reverse hasOneThrough
    // public function company()
    // {

    //     // reverse hasOneThrough
    //     return $this->hasOneThrough(Company::class, Division::class, 'id', 'id',  'division_id', 'company_id');
    // }

    public function company()
    {
        return $this->belongsTo(Company::class);
    }


}