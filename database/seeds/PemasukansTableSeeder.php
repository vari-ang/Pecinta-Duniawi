<?php

use Illuminate\Database\Seeder;

class PemasukansTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Pemasukan::class, 35)->create();
    }
}
