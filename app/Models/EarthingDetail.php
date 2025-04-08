<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class EarthingDetail extends Model
{

    use HasFactory;
    protected $fillable = ['feeder_id', 'category_id', 'tower_structure_id', 'location', 'latitude', 'longitude', 'tage_no', 'chemical', 'rod', 'earth_wire', 'earthing_before', 'earthing_after'];

    public function image()
    {

        return $this->hasOne(Image::class);
    }

    public function images()
    {

        return $this->hasMany(Image::class);
    }


    public function feeder()
    {
        return $this->belongsTo(Feeder::class);
    }

    public function towerStructure()
    {
        return $this->belongsTo(TowerStructure::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function subDivision()
    {
        return $this->hasOneThrough(SubDivision::class, Feeder::class, 'id', 'id', 'feeder_id', 'sub_division_id');
    }

    public function Division()
    {
        return $this->hasOneThrough(Division::class, Feeder::class, 'id', 'id', 'feeder_id', 'division_id');
    }

    public function Circle()
    {
        return $this->hasOneThrough(Circle::class, Feeder::class, 'id', 'id', 'feeder_id', 'circle_id');
    }

    public function gridStation()
    {
        return $this->hasOneThrough(GridStation::class, Feeder::class, 'id', 'id', 'feeder_id', 'grid_station_id');
    }

    public function company()
    {
        return $this->feeder->circle->company();
    }
}
