<?php
use App\User;
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can dangky web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::resource('home','HomeController');

Route::get('login','UserController@getLogin');
Route::post('login','UserController@postLogin');
Route::get('logout', 'UserController@logout');
Route::get('register','UserController@getRegister');
Route::post('register','UserController@postRegister');

Route::resource('Article', 'ArticleController');