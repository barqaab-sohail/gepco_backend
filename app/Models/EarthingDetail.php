<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EarthingDetail extends Model
{
    protected $fillable = ['feeder_id', 'sub_division_id', 'category_id', 'tower_structure_id', 'location', 'latitude', 'longitude', 'tage_no', 'chemical', 'rod', 'earth_wire', 'earthing_before', 'earthing_after'];

    public function image()
    {

        return $this->hasOne(Image::class);
    }

    public function images()
    {

        return $this->hasMany(Image::class);
    }


    public function feeder(){
        return $this->belongsTo(Feeder::class);
    }
}
