<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TabunganBerencana extends Model
{
    public function user() {
        return $this->belongsTo('App\User');
    }

    public function detailPenyisihanIncomes() {
        return $this->hasMany('App\DetailPenyisihanIncome', 'id_tabungan_berencana');
    }

    public function getTotal() {
        return $this->detailPenyisihanIncomes()->sum('nominal');
    }

    public function getPercentage() {
        $total = $this->getTotal();
        $percent = floor(($total / $this->harga) * 100);
        return $percent;
    }

    public function getLeftOver() {
        return $this->harga - $this->getTotal();
    }
}
