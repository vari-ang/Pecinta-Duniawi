<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use App\User;
use App\TabunganBerencana;
use Carbon\Carbon;
use App\Http\Requests\SavingFormStoreRequest; 

class SavingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        if (Auth::check()) {
            // The user is logged in...

            $user = User::find(Auth::id());
            return view('savings.index', [
                'user' => $user
            ]);
        }
        else {
            return abort(403, 'Unauthorized action.');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SavingFormStoreRequest $request)
    {
        try {
            $filename = '';
            if(isset($request->file)) {
                $filename = Carbon::now()->timestamp . '.jpg';

                $file = $request->file('file');
                if(file_exists(Input::file('file')))
                {
                    $file->move(public_path()."/images/savings/", $filename);  
                }
            }

            $saving = new TabunganBerencana();
            $saving->nama = $request->name;
            $saving->keterangan = $request->description;
            $saving->harga = $request->amount;
            $saving->waktu = $request->date;
            $saving->id_user = Auth::id();
            $saving->foto = $filename;

            if(isset($request->reminder)) { $saving->reminder = 1; }
            else { $saving->reminder = 0; }
            
            $saving->save();

            return back()->with('success', 'Saving Target Is Successfully Added');
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
        $saving = TabunganBerencana::find($id);
        return view('savings.progress', [
            'saving' => $saving
        ]);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        //  try {
        //     DB::beginTransaction();
        //     DB::table('detail_penyisihan_incomes')->insert([
        //         'nominal' => $request->nominal,
        //         'id_tabungan_berencana' => $request->get('id')
        //     ]);
        //     DB::commit();
        //     return redirect('savings')->with('success', 'Saving Target Is Successfully Updated');
        // }
        // catch (\Exception $e) {
        //     DB::rollback();
        //     return back()->with('error', $e->getMessage());
        // }
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
