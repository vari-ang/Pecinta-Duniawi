<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TabunganBerencana;
use App\DetailPenyisihanIncome; 
use App\Http\Requests\SavingProgressFormStoreRequest;
use Carbon\Carbon;

class SavingProgressController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    public function store(SavingProgressFormStoreRequest $request)
    {
        try {
            $detail = new DetailPenyisihanIncome();
            $detail->nominal = $request->nominal;
            $detail->waktu = Carbon::now();
            $detail->id_tabungan_berencana = $request->get('id');
            $detail->save();

            return back()->with('success', 'Successfully Made Saving Progress!');
        }
        catch (\Exception $e) {
            return back()->with('error', $e->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
