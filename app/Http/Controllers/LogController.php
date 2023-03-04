<?php

namespace App\Http\Controllers;

use App\Models\Classes;
use App\Models\Log;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;
use Inertia\Response as InertiaResponse;

class LogController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Classes $classes): InertiaResponse
    {
        $logs = $classes->logs()
            ->orderByRaw('(end_time IS NULL) DESC')
            ->orderBy('end_time', 'DESC')
            ->limit(10)
            ->get();
        // return $logs;

        return Inertia::render('Home/index', [
            'logs' => $logs,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): Response
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Log $log): Response
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Log $log): Response
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Log $log): RedirectResponse
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Log $log): RedirectResponse
    {
        //
    }
}
