<?php

use Illuminate\Database\Seeder;

class DetailPengeluaransTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\DetailPengeluaran::class, 125)->create();
    }
}
