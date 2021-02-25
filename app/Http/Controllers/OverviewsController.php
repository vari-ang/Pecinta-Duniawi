<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;
use App\User;
use App\Kategori;
use Illuminate\Support\Facades\Input;
use Excel;
use Carbon\Carbon;
use App\Http\Requests\TransactionEarningFormStoreRequest; 
use App\Http\Requests\TransactionSpendingFormStoreRequest; 

class OverviewsController extends Controller
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
        if(Auth::check()) {
            // The user is logged in...
            $user = User::find(Auth::id());
            return view('overview.index', [
                'user' => $user
            ]);
        }
        else {
            return abort(403, 'Unauthorized action.');
        }
    }

    public function excelPemasukan()
    {
        $user = User::find(Auth::id());
        
        $header[] =  array('No', 'Id Pemasukan', 'Pemasukan', 'Kategori', 'Waktu', 'Nominal', 'Keterangan',);
        foreach ($user->pemasukans()->get() as $id => $detailPemasukan) {
            $header[] = array(
                'No' => $id + 1,
                'Id Pemasukan' => $detailPemasukan->id,
                'Pemasukan' => $detailPemasukan->nama,
                'Kategori' => $detailPemasukan->kategori->nama,
                'Waktu' => $detailPemasukan->pivot->waktu,
                'Nominal' => $detailPemasukan->pivot->nominal,
                'Keterangan' => $detailPemasukan->pivot->keterangan
            );
        }
        Excel::create('Laporan Pemasukan',function($excel) use ($header) {
            $excel->setTitle("Laporan Pemasukan");
            $excel->sheet('Laporan Pemasukan',function($sheet) use($header) {
                $sheet->fromArray($header,null,'A1',false,false);
            });
        })->download('xlsx');

        return view('overview.index', [
            'user' => $user
        ]);
    }

    public function excelPengeluaran()
    {
        $user = User::find(Auth::id());

        $header[] =  array('No', 'Id Pengeluaran', 'Pengeluaran', 'Kategori', 'Waktu', 'Nominal', 'Keterangan');
        foreach ($user->pengeluarans()->get() as $id => $detailPengeluaran) {
            $header[] = array(
                'No' => $id + 1,
                'Id Pengeluaran' => $detailPengeluaran->id,
                'Pengeluaran' => $detailPengeluaran->nama,
                'Kategori' => $detailPengeluaran->kategori->nama,
                'Waktu' => $detailPengeluaran->pivot->waktu,
                'Nominal' => $detailPengeluaran->pivot->nominal,
                'Keterangan' => $detailPengeluaran->pivot->keterangan
            );
        }
        Excel::create('Laporan Pengeluaran',function($excel) use ($header) {
            $excel->setTitle("Laporan Pengeluaran");
            $excel->sheet('Laporan Pengeluaran',function($sheet) use($header) {
                $sheet->fromArray($header,null,'A1',false,false);
            });
        })->download('xlsx');
       
        return view('overview.index', [
            'user' => $user
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

    public function editpemasukan($id)
    {
        $kategoris = Kategori::where('jenis','pemasukan')->get();
        $user = User::find(Auth::id());
        $detailPemasukan = $user->getEarningDetail($id)->first();
        return view('overview.editpemasukan', [
            'kategoris' => $kategoris,
            'detailPemasukan' => $detailPemasukan
        ]);
    }

    public function editpengeluaran($id)
    {
        $kategoris = Kategori::where('jenis','pengeluaran')->get();
        $user = User::find(Auth::id());
        $detailPengeluaran = $user->getSpendingDetail($id)->first();
        return view('overview.editpengeluaran', [
            'kategoris' => $kategoris,
            'detailPengeluaran' => $detailPengeluaran
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updatePemasukan(TransactionEarningFormStoreRequest $request)
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
            $idp = $request->dkategori;
            $user = User::find(Auth::id());
            $user->pemasukans()->updateExistingPivot($idp, [
                'id_pemasukan'=>$request->dkategori,
                'keterangan'=>$request->keterangan,
                'waktu'=>date('Y-m-d H:i:s', strtotime($request->tgl)),
                'nominal'=>floatval($request->nominal),
                'foto'=>$filename
            ]);

            return back()->with('success','Successfully Update Earning Overview');
        }
        catch (\Exception $e) {
            return back()->with('error', $e->getMessage());
        }
    }
    public function updatePengeluaran(TransactionSpendingFormStoreRequest $request)
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
        $idp = $request->dkategori;
        $user = User::find(Auth::id());
        $user->pengeluarans()->updateExistingPivot($idp, [ 
            'id_pengeluaran'=>$request->dkategorip,
            'keterangan'=>$request->keteranganp,
            'waktu'=>date('Y-m-d H:i:s', strtotime($request->tglp)),
            'nominal'=>floatval($request->nominalp),
            'foto'=>$filename
        ]);
        return back()->with('success', 'Successfully Update Spending Overview');
    }
        catch (\Exception $e) {
            return back()->with('error', $e->getMessage());
        }
        
    }
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function deletePemasukan($id)
    {
        if(Auth::check()) {
            $user = User::find(Auth::user()->id);
            $detailPemasukan = $user->getEarningDetail($id)->first();
            $user->pemasukans()->detach($detailPemasukan["pivot"]["id_pemasukan"]);
            return back()->with('success', 'Successfully deleted earning detail (id: ' . $id . ')');
        }
        else{
            //silahkan login
            return abort(403, 'Unauthorized action.');
        }
    }
    public function deletePengeluaran($id)
    {
        if(Auth::check()) {
            $user = User::find(Auth::user()->id);
            $detailPengeluaran = $user->getSpendingDetail($id)->first();
            $user->pengeluarans()->detach($detailPengeluaran["pivot"]["id_pengeluaran"]);
            return back()->with('success', 'Successfully deleted spending detail (id: ' . $id . ')');   

        }
        else{
            //silahkan login
            return abort(403, 'Unauthorized action.');
        }
        
    }
}
