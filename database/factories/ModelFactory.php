<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
// $factory->define(App\User::class, function (Faker\Generator $faker) {
//     static $password;

//     return [
//         'name' => $faker->name,
//         'email' => $faker->unique()->safeEmail,
        // 'password' => $password ?: $password = bcrypt('1234'),
        // 'balance' => $faker->numberBetween(100000, 25000000);
//         'remember_token' => str_random(10),
//     ];
// });

// $factory->define(App\Kategori::class, function (Faker\Generator $faker) {
//     return [
//         'jenis' => $faker->randomElement(['pemasukan', 'pengeluaran']),
//         'nama' => $faker->name,
//         'keterangan' => $faker->text
//     ];
// });

// $factory->define(App\Pemasukan::class, function (Faker\Generator $faker) {
//     return [
//         'nama' => $faker->name,
//         'keterangan' => $faker->text,
//         'id_kategori' => $faker->numberBetween(1, 10)
//     ];
// });

// $factory->define(App\Pengeluaran::class, function (Faker\Generator $faker) {
//     return [
//         'nama' => $faker->name,
//         'keterangan' => $faker->text,
//         'id_kategori' => $faker->numberBetween(1, 10)
//     ];
// });

// $factory->define(App\DetailPemasukan::class, function (Faker\Generator $faker) {
//     return [
//         'foto' => $faker->word . '.jpg',
//         'keterangan' => $faker->text,
//         'waktu' => $faker->dateTime(),
//         'nominal' => $faker->numberBetween(10000, 100000),
//         'id_user' => $faker->numberBetween(1, 10),
//         'id_pemasukan' => $faker->numberBetween(1, 10)
//     ];
// });

// $factory->define(App\DetailPengeluaran::class, function (Faker\Generator $faker) {
//     return [
//         'foto' => $faker->word . '.jpg',
//         'keterangan' => $faker->text,
//         'waktu' => $faker->dateTime(),
//         'nominal' => $faker->numberBetween(10000, 100000),
//         'id_user' => $faker->numberBetween(1, 10),
//         'id_pengeluaran' => $faker->numberBetween(1, 10)
//     ];
// });

// $factory->define(App\TabunganBerencana::class, function (Faker\Generator $faker) {
//     return [
//         'nama' => $faker->name,
//         'keterangan' => $faker->text,
//         'harga' => $faker->numberBetween(10000, 100000),
//         'waktu' => $faker->dateTime(),
//         'id_user' => $faker->numberBetween(1, 10),
//         'foto' => $faker->word . '.jpg'
//     ];
// });

$factory->define(App\DetailPenyisihanIncome::class, function (Faker\Generator $faker) {
    return [
        'nominal' => $faker->numberBetween(10000, 100000),
        'waktu' => $faker->dateTime(),
        'id_tabungan_berencana' => $faker->numberBetween(1, 10)
    ];
});