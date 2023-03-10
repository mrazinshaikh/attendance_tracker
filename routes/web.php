<?php

use App\Http\Controllers\ClassController;
use App\Http\Controllers\LogController;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/welcome', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function (Request $request) {
        $request->session()->flash('flash.banner', 'Yay it works!');
        return Inertia::render('Dashboard');
    })->name('dashboard');

    Route::get('/', [ClassController::class, 'index'])->name('classes.index');
    Route::put('/{classes}', [ClassController::class, 'update'])->name('classes.update');
    Route::post('{classes}/logs', [ClassController::class, 'getLogs'])->name('getClassLogs');

    Route::post('/', [ClassController::class, 'store'])->name('classes.store');

    Route::get('{classes}/log', [LogController::class, 'index'])->name('log.index');
});
