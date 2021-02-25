<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use DB;
use App\User;
use App\Kategori;
use App\Pemasukan;
use App\Pengeluaran;
use Carbon\Carbon; 
use App\Http\Requests\TransactionEarningFormStoreRequest; 
use App\Http\Requests\TransactionSpendingFormStoreRequest; 

class TransactionController extends Controller
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
        $pemasukanKategoris = Kategori::where('jenis','pemasukan')->get();
        $pengeluaranKategoris = Kategori::where('jenis','pengeluaran')->get();

        return view('transaction.index', [
            'pemasukanKategoris' => $pemasukanKategoris, 
            'pengeluaranKategoris' => $pengeluaranKategoris
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
    public function storePemasukan(TransactionEarningFormStoreRequest $request)
    {   
        try {
            $filename = '';
            if(isset($request->file)) {
                $filename = Carbon::now()->timestamp . '.jpg';

                $file = $request->file('file');
                if(file_exists(Input::file('file')))
                {
                    $file->move(public_path()."/images/imgpemasukan/", $filename);  
                }
            }
            
            $user = User::find(Auth::id());
            $user->pemasukans()->attach(Auth::id(), [
                'id_user'=>Auth::id(),
                'id_pemasukan'=>$request->dkategori,
                'keterangan'=>$request->keterangan,
                'waktu'=>date('Y-m-d H:i:s', strtotime($request->tgl)),
                'nominal'=>floatval($request->nominal),
                'foto'=>$filename
            ]);

            // $hasilhitung = Auth::user()->balance + $request->nominal;
            // DB::table('users')->where('id',Auth::user()->id)->update([
            //     'balance'=>$hasilhitung
            // ]);
            
            return back()->with('success','Earning detail has been successfully added');
        }
        catch (\Exception $e) {
            return back()->with('error', $e->getMessage());
        }
    }

    public function storePengeluaran(TransactionSpendingFormStoreRequest $request)
    {       
        try {
            $filename = '';
            if(isset($request->file)) {
                $filename = Carbon::now()->timestamp . '.jpg';

                $file = $request->file('file');
                if(file_exists(Input::file('file')))
                {
                    $file->move(public_path()."/images/imgpengeluaran/", $filename);  
                }
            }

            $user = User::find(Auth::id());
            $user->pengeluarans()->attach(Auth::id(), [
                'id_user'=>Auth::id(),
                'id_pengeluaran'=>$request->dkategorip,
                'keterangan'=>$request->keteranganp,
                'waktu'=>date('Y-m-d H:i:s', strtotime($request->tglp)),
                'nominal'=>floatval($request->nominalp),
                'foto'=>$filename
            ]);
            
            // $hasilhitung = Auth::user()->balance - $request->nominalp;
            // DB::table('users')->where('id',Auth::user()->id)->update([
            //     'balance'=>floatval($hasilhitung)
            // ]);
            
            return back()->with('success','Spending detail has been successfully added');
        }
        catch (\Exception $e) {
            return back()->with('error', $e->getMessage());
        }
    }

    public function searchPemasukan(Request $request)
    {
        if(isset($request->idkategori)) {
            $datas = Pemasukan::where('id_kategori',$request->idkategori)->get();
            $output='<option value="kos">--Select--</option>';
            foreach ($datas as $dt) {
                $output.='<option value="'.$dt->id.'">'.$dt->nama.'</option>';
            }
            echo $output;
        }
    }
    
    public function searchPengeluaran(Request $request)
    {
        if(isset($request->idkategorip)) {
            $datas = Pengeluaran::where('id_kategori',$request->idkategorip)->get();
            $output='<option value="kos">--Select--</option>';
            foreach ($datas as $dt) {
                $output.='<option value="'.$dt->id.'">'.$dt->nama.'</option>';
            }
            echo $output;
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
