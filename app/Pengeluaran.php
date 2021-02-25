<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengeluaran extends Model
{
    public function kategori() {
        return $this->belongsTo('App\Kategori', 'id_kategori');
    }

    public function users() {
        return $this->belongsToMany('App\User', 'detail_pengeluarans', 'id_pengeluaran', 'id_user')
                    ->withPivot('id', 'foto', 'keterangan', 'waktu', 'nominal');
    }
}
