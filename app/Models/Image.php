<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $fillable = ['path', 'earthing_detail_id'];

    public function earthingDetail()
    {
        return $this->belongsTo(EarthingDetail::class);
    }

    public function feeder(){
        return $this->hasOneThrough(Feeder::class, EarthingDetail::class,'id','id','');
    }
}
