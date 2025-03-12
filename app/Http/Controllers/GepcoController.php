<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\Company;
use App\Models\Division;
use App\Models\SubDivision;
use Illuminate\Http\Request;
use App\Models\EarthingDetail;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class GepcoController extends Controller
{
    public function options()
    {
        $companies = Company::all();
        $divisions = Division::all();
        $subDivisions = SubDivision::all();

        return response()
            ->json(['companies' => $companies, 'divisions' => $divisions, 'subDivisions' => $subDivisions]);
    }

    public function earthingDetail(Request $request)
    {
        $validated = $request->validate([
            'feeder_name' => 'required|max:191',
            'sub_division_id' => 'required',
            'category_id' => 'required',
            'tower_structure_id' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'tage_no' => 'required',
            'chemical' => 'required',
            'rod' => 'required',
            'earth_wire' => 'required',
            'earthing_after' => 'required',
        ]);

        $data = EarthingDetail::create([
            'feeder_name' => $request->feeder_name,
            'sub_division_id' => $request->sub_division_id,
            'category_id' => $request->category_id,
            'tower_structure_id' => $request->tower_structure_id,
            'location' => $request->location,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'tage_no' => $request->tage_no,
            'chemical' => $request->chemical,
            'rod' => $request->rod,
            'earth_wire' => $request->earth_wire,
            'earthing_before' => $request->earthing_before,
            'earthing_after' => $request->earthing_after,
        ]);



        //store file
        $path = Storage::disk('public')->put('images', $request->file('image'));
        Image::create([
            'earthing_detail_id' => $data->id,
            'path' => $path
        ]);

        return  response()->json('Data Successfully Saved');
    }

    public function saveEarthingDetail(Request $request)
    {

        $validated = $request->validate([
            'image' => 'required',
        ]);

        $path = Storage::disk('public')->put('images', $request->file('image'));
        Image::create([
            'earthing_detail_id' => 7,
            'path' => $path
        ]);

        return  response()->json('Data Successfully Saved');
    }
}
