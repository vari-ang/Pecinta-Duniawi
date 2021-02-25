<?php

use Illuminate\Database\Seeder;

class TabunganBerencanasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\TabunganBerencana::class, 35)->create();
    }
}
