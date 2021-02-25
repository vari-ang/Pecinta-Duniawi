<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        // $this->call(KategorisTableSeeder::class);  
        // $this->call(PemasukansTableSeeder::class);  
        // $this->call(PengeluaransTableSeeder::class);
        // $this->call(DetailPemasukansTableSeeder::class);
        // $this->call(DetailPengeluaransTableSeeder::class);   
        // $this->call(TabunganBerencanasTableSeeder::class);
        $this->call(DetailPenyisihanIncomesTableSeeder::class);
    }
}
