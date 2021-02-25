<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\User;
use App\Kategori;
use App\Pemasukan;
use App\Pengeluaran;
use App\Http\Requests\ConfigurationKategoriFormStoreRequest; 
use App\Http\Requests\ConfigurationEarningFormStoreRequest; 
use App\Http\Requests\ConfigurationSpendingFormStoreRequest; 

class ConfigurationController extends Controller
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

        return view('configuration.index',[
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
    public function storeKategori(ConfigurationKategoriFormStoreRequest $request)
    {
        $k = new Kategori();
        $k->nama = $request->namekategori;
        $k->jenis = $request->jeniskategori;
        $k->keterangan = $request->keterangankategori;
        $k->save();

        return back()->with('success','Category has been successfully added');
    }
    public function storePemasukan(ConfigurationEarningFormStoreRequest $request)
    {
        $pemasukan = new Pemasukan();
        $pemasukan->nama = $request->namapemasukan;
        $pemasukan->id_kategori = $request->kategoripemasukan;
        $pemasukan->keterangan = $request->keteranganpemasukan;
        $pemasukan->save();

        return back()->with('success','Earning has been successfully added');
    }
    public function storePengeluaran(ConfigurationSpendingFormStoreRequest $request)
    {
        $pengeluaran = new Pengeluaran();
        $pengeluaran->nama = $request->namapengeluaran;
        $pengeluaran->id_kategori = $request->kategoripengeluaran;
        $pengeluaran->keterangan = $request->keteranganpengeluaran;
        $pengeluaran->save();

        return back()->with('success','Spending has been successfully added');
    }
    public function searchdata(Request $request){
        $hasil = DB::table('kategoris')->where('id',$request->idkategori)->get();
        return $hasil;
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
        DB::table('kategoris')->where('id',$request->listkat)->update([
            'nama'=>$request->namekategori,
            'keterangan'=>$request->keterangan
        ]);
        return back()->with('Success','Data Berhasil diUpdate');
    }
    public function delete(Request $request)
    {
        DB::table('kategoris')->where('id',$request->listkat)->delete();
        return back()->with('successs','Data Delete');
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
