<?php

namespace App\Http\Controllers;

use DateTime;
use App\Models\Log;
use Inertia\Inertia;
use App\Models\Classes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ClassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /** @var User $user */
        $user = Auth::user();
        $lists = $user->classes()->with(['logs' => function ($query) {
            /** @var \Illuminate\Database\Eloquent\Builder $query */
            return $query->select('id', 'class_id')->whereNull('end_time');
        }])->paginate(5);

        return Inertia::render('Home/index', [
            'classes' => $lists,
        ]);
    }

    public function getLogs(Request $request, Classes $classes)
    {
        $logs = $classes->logs()
            ->orderByRaw('(end_time IS NULL) DESC')
            ->orderBy('end_time', 'DESC')
            ->limit(10)
            ->get();
        return $logs;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Classes  $classes
     * @return \Illuminate\Http\Response
     */
    public function show(Classes $classes)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Classes  $classes
     * @return \Illuminate\Http\Response
     */
    public function edit(Classes $classes)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Classes  $classes
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Classes $classes)
    {
        switch ($request->get('action')) {
            case 'login':
                $log = new Log();
                $classes->logs()->create([$log]);
                $classes->save();
                break;
            case 'logoff':
                /** @var Log $logs */
                $logs = $classes->logs()->whereNull('end_time')->firstOrFail();
                $logs->end_time = new DateTime();
                $logs = $logs->update();
                break;
        }
        return response()->redirectTo(url()->previous());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Classes  $classes
     * @return \Illuminate\Http\Response
     */
    public function destroy(Classes $classes)
    {
        //
    }
}
