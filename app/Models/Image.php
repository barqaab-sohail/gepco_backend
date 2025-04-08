<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Image extends Model
{
    use HasFactory;
    protected $fillable = ['path', 'earthing_detail_id'];

    public function earthingDetail()
    {
        return $this->belongsTo(EarthingDetail::class);
    }

    public function feeder(){
        return $this->hasOneThrough(Feeder::class, EarthingDetail::class,'id','id','');
    }
}
