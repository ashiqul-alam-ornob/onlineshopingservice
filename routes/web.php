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

Route::get('/', function(){
	return view('welcome');
});



//Route::get('/frontpage', "WebsiteController@index");

Route::get('/login', 'logincontroller@index')->name('login.index');
Route::post('/login', 'logincontroller@verify');
Route::get('/logout', 'logoutcontroller@index')->name('logout.index');
Route::get('/register', 'usercontroller@add')->name('coustomer.register');
Route::post('/register', 'usercontroller@add')->name('coustomer.register');
Route::get('/home', 'homecontroller@index')->name('home.index');

Route::get('/coustomerlist', 'usercontroller@index')->name('home.index');
Route::post('/coustomerlist', 'usercontroller@index')->name('home.index');


