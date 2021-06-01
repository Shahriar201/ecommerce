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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'Frontend\FrontendController@index');
Route::get('about-us', 'Frontend\FrontendController@aboutUs')->name('about.us');
Route::get('contact-us', 'Frontend\FrontendController@contactUs')->name('contact.us');
Route::post('/contact/store', 'Frontend\FrontendController@store')->name('contact.store');
Route::get('/shopping-cart', 'Frontend\FrontendController@shoppingCart')->name('shopping.cart');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::group(['middleware'=>'auth'], function(){

    Route::prefix('users')->group(function(){

        Route::get('/view', 'Backend\UserController@view')->name('users.view');
        Route::get('/add', 'Backend\UserController@add')->name('users.add');
        Route::post('/store', 'Backend\UserController@store')->name('users.store');  
        Route::get('/edit/{id}', 'Backend\UserController@edit')->name('users.edit');
        Route::post('/update/{id}', 'Backend\UserController@update')->name('users.update');
        Route::post('/delete', 'Backend\UserController@delete')->name('users.delete');
        
    });
    
    Route::prefix('profiles')->group(function(){
    
        Route::get('/view', 'Backend\ProfileController@view')->name('profiles.view');
        Route::get('/edit', 'Backend\ProfileController@edit')->name('profiles.edit');
        Route::post('/store', 'Backend\ProfileController@update')->name('profiles.update');
        Route::get('/password/view', 'Backend\ProfileController@passwordView')->name('profiles.password.view');
        Route::post('/password/update', 'Backend\ProfileController@passwordUpdate')->name('profiles.password.update');
        
    });
    
    Route::prefix('logos')->group(function(){
    
        Route::get('/view', 'Backend\LogoController@view')->name('logos.view');
        Route::get('/add', 'Backend\LogoController@add')->name('logos.add');
        Route::post('/store', 'Backend\LogoController@store')->name('logos.store');  
        Route::get('/edit/{id}', 'Backend\LogoController@edit')->name('logos.edit');
        Route::post('/update/{id}', 'Backend\LogoController@update')->name('logos.update');
        Route::post('/delete', 'Backend\LogoController@delete')->name('logos.delete');
        
    });
    
    Route::prefix('sliders')->group(function(){
    
        Route::get('/view', 'Backend\SliderController@view')->name('sliders.view');
        Route::get('/add', 'Backend\SliderController@add')->name('sliders.add');
        Route::post('/store', 'Backend\SliderController@store')->name('sliders.store');   
        Route::get('/edit/{id}', 'Backend\SliderController@edit')->name('sliders.edit');
        Route::post('/update/{id}', 'Backend\SliderController@update')->name('sliders.update');
        Route::post('/delete', 'Backend\SliderController@delete')->name('sliders.delete');
        
    });
    
    Route::prefix('contacts')->group(function(){
    
        Route::get('/view', 'Backend\ContactController@view')->name('contacts.view');
        Route::get('/add', 'Backend\ContactController@add')->name('contacts.add');
        Route::post('/store', 'Backend\ContactController@store')->name('contacts.store'); 
        Route::get('/edit/{id}', 'Backend\ContactController@edit')->name('contacts.edit');
        Route::post('/update/{id}', 'Backend\ContactController@update')->name('contacts.update');
        Route::post('/delete', 'Backend\ContactController@delete')->name('contacts.delete');

        Route::get('/communicate', 'Backend\ContactController@viewCommunicate')->name('contacts.communicate');
        Route::post('/communicate/delete', 'Backend\ContactController@deleteCommunicate')->name('contacts.communicate.delete');
        
    });
    
    Route::prefix('abouts')->group(function(){
    
        Route::get('/view', 'Backend\AboutController@view')->name('abouts.view');
        Route::get('/add', 'Backend\AboutController@add')->name('abouts.add');
        Route::post('/store', 'Backend\AboutController@store')->name('abouts.store'); 
        Route::get('/edit/{id}', 'Backend\AboutController@edit')->name('abouts.edit');
        Route::post('/update/{id}', 'Backend\AboutController@update')->name('abouts.update');
        Route::post('/delete', 'Backend\AboutController@delete')->name('abouts.delete');        
    });
    

});

