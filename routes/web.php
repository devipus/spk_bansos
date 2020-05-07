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

	Route::get('/', function () {
	    return view('auth.login');
	});
	
	/**
	 * This from original Router Laravel
	 */
	// Auth::routes();


	/**
	 * Login Router
	 */
	Route::get('/login', 'Auth\LoginController@showLoginForm')->name('login');
	Route::post('/login', 'Auth\LoginController@login')->name('login.submit');

	/**
	 * Logout Route
	 */
	Route::get('/logout', 'Auth\LoginController@logout')->name('logout');

	/**
	 * Registration Routes
	 */
	$this->get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
	$this->post('register', 'Auth\RegisterController@register');

	/**
	 * Password Reset Routes
	 */
	$this->get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm');
	$this->post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');
	$this->get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm');
	$this->post('password/reset', 'Auth\ResetPasswordController@reset');

	/**
	 * Router For HomeController
	 */
	Route::get('/home', 'HomeController@index')->name('home');

	// baru
	Route::get('api/bobotkri', 'BobotkriController@apiBobotkri')->name('api.bobotkri');	
	Route::resource('bobotkri', 'BobotkriController');

	Route::get('api/subkriteria', 'SubkriteriaController@apiSubkriteria')->name('api.subkriteria');	
	Route::resource('subkriteria', 'SubkriteriaController');

	Route::get('api/usulan', 'UsulanController@apiUsulan')->name('api.usulan');	
	Route::resource('usulan', 'UsulanController');
	Route::get('usulanexport', 'UsulanController@dataExport')->name('usulan.export');

	Route::get('api/penilaian', 'PenilaianController@apiPenilaian')->name('api.penilaian');	
	Route::resource('penilaian', 'PenilaianController');

	Route::get('api/bobotgap', 'BobotgapController@apiBobotgap')->name('api.bobotgap');	
	Route::resource('bobotgap', 'BobotgapController');

	Route::get('api/rangking', 'RankingController@apiRanking')->name('api.ranking');	
	Route::get('ranking/laporan', 'RankingController@laporan')->name('laporan');
	Route::resource('ranking', 'RankingController');
	Route::get('rankingexport', 'RankingController@dataExport')->name('ranking.export');

	Route::resource('beranda', 'berandaController');




	
	
	