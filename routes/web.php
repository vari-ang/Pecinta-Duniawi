<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
Route::get('home', function () {
    return view('home');
});

// Profile
Route::get('profile', 'UserController@index');
Route::post('profile/update', 'UserController@update');

// Configuration
Route::get('configuration', 'ConfigurationController@index');
Route::post('configuration/search','ConfigurationController@searchdata')->name('configuration.searchdata');
Route::post('configuration/update','ConfigurationController@update');
Route::post('configuration/pemasukan/delete','ConfigurationController@delete');
Route::post('configuration/kategori/add', 'ConfigurationController@storeKategori');
Route::post('configuration/pemasukan/add', 'ConfigurationController@storePemasukan');
Route::post('configuration/pengeluaran/add', 'ConfigurationController@storePengeluaran');

// Transaction
Route::get('transaction','TransactionController@index');
Route::post('transaction/tpemasukan/search','TransactionController@searchPemasukan')->name('tpemasukan.searchPemasukan');
Route::post('transaction/tpemasukan/add','TransactionController@storePemasukan');
Route::post('transaction/tpengeluaran/search','TransactionController@searchPengeluaran')->name('tpengeluaran.searchPengeluaran');
Route::post('transaction/tpengeluaran/add','TransactionController@storePengeluaran');

// //pemasukan
// Route::get('pemasukan','PemasukanController@create');
// Route::post('pemasukan/add','PemasukanController@store');
// //pengeluaran
// Route::get('pengeluaran','PengeluaranController@create');
// Route::post('pengeluaran/add','PengeluaranController@store');

// Overview
Route::get('overviews','OverviewsController@index');
// Route::get('overviews/pemasukan/{id}/detail','OverviewsController@detail');
Route::get('overviews/pemasukan/{id}/edit','OverviewsController@editpemasukan');
Route::get('overviews/pemasukan/{id}/delete','OverviewsController@deletePemasukan');
Route::get('overviews/pengeluaran/{id}/edit','OverviewsController@editpengeluaran');
Route::get('overviews/pengeluaran/{id}/delete','OverviewsController@deletePengeluaran');
Route::post('overviews/update/pemasukan','OverviewsController@updatePemasukan');
Route::post('overviews/update/pengeluaran','OverviewsController@updatePengeluaran');
Route::get('overviews/excelPemasukan','OverviewsController@excelPemasukan');
Route::get('overviews/excelPengeluaran','OverviewsController@excelPengeluaran');

// Graphs
Route::get('graphs', 'GraphController@index');
Route::get('graphs/show-comparison/{id}', 'GraphController@showComparison');
Route::get('graphs/show-spending-pie/{id}', 'GraphController@showSpendingPieChart');
Route::get('graphs/show-earning-pie/{id}', 'GraphController@showEarningPieChart');

// Saving Plans
Route::resource('savings','SavingsController');
Route::get('savings/{id}/makeprogress','SavingsController@edit');
Route::post('savings/progress','SavingProgressController@store');

// Saving Reminder
Route::get('saving-reminder', 'SavingReminderController@index');