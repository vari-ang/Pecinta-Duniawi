<?php

namespace App;

use DB;
use Carbon\Carbon; 
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function pemasukans() {
        return $this->belongsToMany('App\Pemasukan', 'detail_pemasukans', 'id_user', 'id_pemasukan')
                    ->withPivot('id', 'foto', 'keterangan', 'waktu', 'nominal')
                    ->orderBy('detail_pemasukans.id','desc');
    }

    public function pengeluarans() {
        return $this->belongsToMany('App\Pengeluaran', 'detail_pengeluarans', 'id_user', 'id_pengeluaran')
                    ->withPivot('id', 'foto', 'keterangan', 'waktu', 'nominal')
                    ->orderBy('detail_pengeluarans.id','desc');
    }
    public function tabunganBerencanas() {
        return $this->hasMany('App\TabunganBerencana', 'id_user');
    }

    public function totalEarning() {
        return $this->pemasukans()->sum('nominal');
    }

    public function totalSpending() {
        return $this->pengeluarans()->sum('nominal');
    }

    public function totalSaving() {
        return $this->tabunganBerencanas()->sum('harga');
    }

    public function getEarningSpendingComparison($id) {
        $query = $this->join('detail_pemasukans', 'users.id', '=', 'detail_pemasukans.id_user')
                    ->join('detail_pengeluarans', 'users.id', '=', 'detail_pengeluarans.id_user')
                    ->select(DB::raw("SUM(detail_pemasukans.nominal) AS total_pemasukan"), DB::raw("SUM(detail_pengeluarans.nominal) AS total_pengeluaran"));
        
        // Today
        $query->when($id == "00", function ($q) use ($id) {
            return $q->whereDate('detail_pemasukans.waktu', '=', Carbon::today())
                    ->whereDate('detail_pengeluarans.waktu','=', Carbon::today());
        });

        // Yesterday
        $query->when($id == "01", function ($q) use ($id) {
            return $q->whereDate('detail_pemasukans.waktu', '=', Carbon::yesterday())
                    ->whereDate('detail_pengeluarans.waktu','=', Carbon::yesterday());
        });

        // Last 7 days
        $query->when($id == "02", function ($q) use ($id) {
            return $q->whereDate('detail_pemasukans.waktu', '>', Carbon::now()->subDays(7))
                    ->whereDate('detail_pengeluarans.waktu','>', Carbon::now()->subDays(7));
        });

        // Last 30 days
        $query->when($id == "03", function ($q) use ($id) {
            return $q->whereDate('detail_pemasukans.waktu', '>', Carbon::now()->subDays(30))
                    ->whereDate('detail_pengeluarans.waktu','>', Carbon::now()->subDays(30));
        });

        // This month
        $query->when($id == "04", function ($q) use ($id) {
            return $q->whereRaw('MONTH(detail_pemasukans.waktu) = ?', [Carbon::now()->month])
                    ->whereRaw('MONTH(detail_pengeluarans.waktu) = ?', [Carbon::now()->month]);
        });

        // Last 3 months
        $query->when($id == "05", function ($q) use ($id) {
            return $q->whereDate('detail_pemasukans.waktu', '>', Carbon::now()->subMonth(2))
                    ->whereDate('detail_pengeluarans.waktu','>', Carbon::now()->subMonth(2));
        });

        // This Year
        $query->when($id == "06", function ($q) use ($id) {
            return $q->whereYear('detail_pemasukans.waktu', '=', Carbon::now()->year)
                    ->whereYear('detail_pengeluarans.waktu', '=', Carbon::now()->year);
        });

        return $query->get();
    }
    
    public function getEarningDetail($id) {
        return $this->pemasukans()->where('detail_pemasukans.id', $id);
    }

    public function getSpendingDetail($id) {
        return $this->pengeluarans()->where('detail_pengeluarans.id', $id);
    }

    public function getSpendingDetailGraph($id) {
        $query = $this->pengeluarans()
                    ->select('pengeluarans.nama', DB::raw("SUM(detail_pengeluarans.nominal) AS pengeluaran"))
                    ->whereYear('detail_pengeluarans.waktu', '=', '2019')
                    ->groupBy('pengeluarans.id');

        $query->when($id != "00", function ($q) use ($id) {
            return $q->whereRaw('MONTH(detail_pengeluarans.waktu) = ?', [$id]);
        });

        return $query->get();
    }

    public function getEarningDetailGraph($id) { 
        $query = $this->pemasukans()
                    ->select('pemasukans.nama', DB::raw("SUM(detail_pemasukans.nominal) AS pemasukan"))
                    ->whereYear('detail_pemasukans.waktu', '=', '2019')
                    ->groupBy('pemasukans.id');

        $query->when($id != "00", function ($q) use ($id) {
            return $q->whereRaw('MONTH(detail_pemasukans.waktu) = ?', [$id]);
        });
        
        return $query->get();
    }

    public function getReminders() {
        // reminders on this item which progress is made more than a month ago since last progress is made
        $results = [];

        $savings = $this->tabunganBerencanas()
                        ->where('reminder', '1')
                        ->get();

        foreach($savings as $saving) {
            $lastSavingDetail = $saving->detailPenyisihanIncomes()
                                    ->orderBy('id', 'DESC')
                                    ->first();
            
            if(isset($lastSavingDetail)) {
                if(strtotime(Carbon::now()->toDateTimeString()) - strtotime($lastSavingDetail->waktu) > 30 * 24 * 60 * 60) {
                    array_push($results, $saving);
                }
            }
        }

        return $results;
    }
}
