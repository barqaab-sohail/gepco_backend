<?php


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\GepcoController;



Route::middleware(['auth:sanctum'])->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/gepco/test', function () {
    return 'ok';
});

Route::post('/gepco/login', [LoginController::class, 'login']);

Route::middleware(['auth:sanctum'])->prefix('gepco')->group(function () {
    Route::get('/options', [GepcoController::class, 'options']);
    Route::post('/earthingDetail', [GepcoController::class, 'earthingDetail']);
    Route::post('/save', [GepcoController::class, 'saveEarthingDetail']);
    Route::get('/divisions/{cirle_id}', [GepcoController::class, 'getDivisions']);
    Route::get('/subdivisions/{division_id}', [GepcoController::class, 'getSubDivisions']);
    Route::get('/feeders/{sub_division_id}', [GepcoController::class, 'getfeeders']);
});
