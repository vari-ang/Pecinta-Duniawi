<?php

use Illuminate\Database\Seeder;

class DetailPemasukansTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\DetailPemasukan::class, 25)->create();
    }
}
