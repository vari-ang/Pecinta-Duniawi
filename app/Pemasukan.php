<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pemasukan extends Model
{
    public function kategori() {
        return $this->belongsTo('App\Kategori', 'id_kategori');
    }

    public function users() {
        return $this->belongsToMany('App\User', 'detail_pemasukans', 'id_pemasukan', 'id_user')
                    ->withPivot('id', 'foto', 'keterangan', 'waktu', 'nominal');
    }
}
