<?php

namespace App\Http\Controllers;

use App\Models\Classes;
use App\Models\Log;
use DateTime;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ClassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lists = Classes::with(['logs' => function($query) {
            /** @var \Illuminate\Database\Eloquent\Builder $query */
            return $query->select('id','class_id')->whereNull('end_time');
        }])->paginate(5);

        return Inertia::render('Home/index', [
            'classes' => $lists,
        ]);
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
        switch($request->get('action')){
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
