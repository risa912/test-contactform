<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\AuthController;

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

// index.blade.phpに遷移するルート
Route::get('/', [ContactController::class, 'index']);
// confirm.blade.phpに遷移するルートを追加
Route::get('/confirm', [ContactController::class, 'confirm']);  
Route::post('/confirm', [ContactController::class, 'confirm']);
// 完了ページに遷移するルートを追加
Route::post('/thanks', [ContactController::class, 'store']);

// ユーザー登録
Route::get('/register', [AuthController::class, 'showRegisterForm'])->name('register');
Route::post('/register', [AuthController::class, 'register']);

// ログイン
Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthController::class, 'login']);

// 管理画面（ログイン必須）
Route::middleware('auth')->group(function () {
   Route::get('/admin', function () {
        return view('admin');
    })->name('admin');
}); 

