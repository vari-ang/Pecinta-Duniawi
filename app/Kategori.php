<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    public function pemasukans() {
        return $this->hasMany('App\Pemasukan', 'id_kategori');
    }

    public function pengeluarans() {
        return $this->hasMany('App\Pengeluaran', 'id_kategori');
    }
}
