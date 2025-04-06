<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\Company;
use App\Models\Division;
use App\Models\SubDivision;
use App\Models\Feeder;
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
        'feeder_id' => 'required|integer',
        'category_id' => 'required|integer',
        'tower_structure_id' => 'required|integer',
        'latitude' => 'required|numeric',
        'longitude' => 'required|numeric',
        'tage_no' => 'required|string',
        'chemical' => 'required|string',
        'rod' => 'required|string',
        'earth_wire' => 'required|string',
        'earthing_after' => 'required|string',
        'image' => 'required|image|max:2048', // 2MB max
    ]);

    try {
        $data = EarthingDetail::create([
            'feeder_id' => $request->feeder_id,
            'category_id' => $request->category_id,
            'tower_structure_id' => $request->tower_structure_id,
            'location' => $request->location ?? null,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'tage_no' => $request->tage_no,
            'chemical' => $request->chemical,
            'rod' => $request->rod,
            'earth_wire' => $request->earth_wire,
            'earthing_before' => $request->earthing_before ?? null,
            'earthing_after' => $request->earthing_after,
        ]);

        // Store file
        $path = $request->file('image')->store('images', 'public');
        
        Image::create([
            'earthing_detail_id' => $data->id,
            'path' => $path
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Data successfully saved',
            'data' => $data
        ]);
        
    } catch (\Exception $e) {
        return response()->json([
            'success' => false,
            'message' => 'Failed to save data',
            'error' => $e->getMessage()
        ], 500);
    }
}

    public function saveEarthingDetail(Request $request)
    {

        $validated = $request->validate([
            'image' => 'required',
        ]);




        $path = Storage::disk('public')->put('images', $request->file('image'));
        Image::create([
            'earthing_detail_id' => 1,
            'path' => $path
        ]);

        return response()->json('Data Successfully Saved');
    }

    public function getDivisions($circleId)
    {

        $divisions = Division::select(['id', 'name'])->where('circle_id', $circleId)->get();

        return response()->json($divisions);
    }

    public function getSubDivisions($divisionId)
    {

        $subDivisions = SubDivision::select(['id', 'name', 'code'])->where('division_id', $divisionId)->get();

        return response()->json($subDivisions);
    }

    public function getFeeders($subDivisionId)
    {

        $feeders = Feeder::select(['id', 'name', 'feeder_code', 'category'])->where('sub_division_id', $subDivisionId)->get();

        return response()->json($feeders);
    }
}
