<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Feeder extends Model
{
    protected $fillable = [
        'grid_station_id', 
        'circle_id',
        'division_id',
        'sub_division_id',
        'name',
        'feeder_code',
        'category'
    ];
    
    public function gridStation()
    {
        return $this->belongsTo(GridStation::class);
    }
    
    public function circle()
    {
        return $this->belongsTo(Circle::class);
    }
    
    public function division()
    {
        return $this->belongsTo(Division::class);
    }
    
    public function subDivision()
    {
        return $this->belongsTo(SubDivision::class);
    }
}
