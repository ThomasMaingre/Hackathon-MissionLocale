<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GhinsController;
use App\Http\Controllers\GouvernanceController;
use App\Http\Controllers\SeoController;

use App\Http\Controllers\ContactController;


Route::get('/', [HomeController::class, 'showIndex'])->name('index');
Route::get('/page_accueil/{id}/edit', [HomeController::class, 'edit'])->name('edit.pageAccueil');
Route::put('/page_accueil/{id}', [HomeController::class, 'update'])->name('update.pageAccueil');
Route::get('/page_accueil/delete/{id}', [HomeController::class, 'delete'])->name('delete.pageAccueil');
Route::get('/page_accueil/create', [HomeController::class, 'create'])->name('create.pageAccueils');


Route::get('/ghins', [GhinsController::class, 'showGhins'])->name('ghins');

Route::get('/ghins/{id}/edit', [GhinsController::class, 'edit'])->name('edit.pageGhins');
Route::put('/ghins/{id}', [GhinsController::class, 'update'])->name('update.pageGhins');
Route::get('/ghins/delete/{id}', [GhinsController::class, 'delete'])->name('delete.pageGhins');
Route::get('/ghins/create', [GhinsController::class, 'create'])->name('create.pageGhins');


Route::get('/gouvernance', [GouvernanceController::class, 'showGouvernance'])->name('gouvernance');
Route::get('/gouvernance/{id}/edit', [GouvernanceController::class, 'edit'])->name('edit.pageGouvernance');
Route::put('/gouvernance/{id}', [GouvernanceController::class, 'update'])->name('update.pageGouvernance');
Route::get('/gouvernance/delete/{id}', [GouvernanceController::class, 'delete'])->name('delete.pageGouvernance');
Route::get('/gouvernance/create', [GouvernanceController::class, 'create'])->name('create.pageGouvernance');


Route::get('/contact', [ContactController::class, 'showContact'])->name('contact');
Route::get('/contact/{id}/edit', [ContactController::class, 'edit'])->name('edit.pageContact');
Route::put('/contact/{id}', [ContactController::class, 'update'])->name('update.pageContact');
Route::get('/contact/delete/{id}', [ContactController::class, 'delete'])->name('delete.pageContact');
Route::get('/contact/create', [ContactController::class, 'create'])->name('create.pageContact');

Route::get('/admin/login', [AdminController::class, 'showLoginForm'])->name('admin.login');
Route::post('/admin/login', [AdminController::class, 'login'])->name('admin.login.submit');

// Dashboard Sécurisé 
Route::get('/rgpd', [\App\Http\Controllers\RgpdController::class, 'rgpd'])->name('rgpd');

// Route for registration form
Route::get('/me', [UserController::class, 'index'])->name('user.index');
// Login Routes
Route::get('/login', [UserController::class, 'showLoginForm'])->name('login');
Route::post('/login', [UserController::class, 'login'])->name('login.submit');
Route::get('/logout', [UserController::class, 'logout'])->name('logout');

Route::get('/admin/dashboard', function () {
    if (Auth::check() && Auth::user()->isAdmin()) {
        // User is authenticated and is an admin
        return view('admin.dashboard');
    } else {
        // User is not an admin or not authenticated
        abort(403, 'Unauthorized.');
    }
})->name('admin.dashboard')->middleware('auth');


// seo
Route::post('/seo_update', [SeoController::class, 'update'])->name('seo_update');
Route::get('/seo_form', [SeoController::class, 'showForm'])->name('seo_form');
