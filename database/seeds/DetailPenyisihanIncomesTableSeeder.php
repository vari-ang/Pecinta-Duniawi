<?php

use Illuminate\Database\Seeder;

class DetailPenyisihanIncomesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\DetailPenyisihanIncome::class, 125)->create();
    }
}
