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
// Trang chủ
Route::resource('home','HomeController');

// Đăng nhập đăng xuất
Route::get('login','UserController@getLogin');
Route::post('login','UserController@postLogin');
Route::get('logout', 'UserController@logout');
Route::get('register','UserController@getRegister');
Route::post('register','UserController@postRegister');

Route::resource('Article', 'ArticleController');

// Admin
Route::resource('admin', 'AdminController');
Route::resource('area', 'AreaController');
Route::resource('category', 'CategoryController');
Route::resource('post', 'PostController');

// Search
Route::resource('search', 'SearchController');

// Route::get('home/{Category}', function () {
// })->name('Category');

    // [
    // 'as'=>'Category',
    // 'uses'=>'SearchController@getCategory'
    // ]);

