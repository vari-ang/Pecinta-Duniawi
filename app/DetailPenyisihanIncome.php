<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailPenyisihanIncome extends Model
{
    protected $table = 'detail_penyisihan_incomes';

    public function tabunganBerenana() {
        return $this->belongsTo('App\TabunganBerenana');
    }
}
