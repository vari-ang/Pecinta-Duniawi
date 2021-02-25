<?php

use Illuminate\Database\Seeder;

class PengeluaransTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Pengeluaran::class, 35)->create();
    }
}
