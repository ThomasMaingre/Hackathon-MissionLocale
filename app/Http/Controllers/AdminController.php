<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function showLoginForm()
    {
        return view('admin/login');
    }
    public function login(Request $request)
    {
        $credentials = [
            'email' => $request->input('email'),
            'password' => $request->input('password')
        ];
        $user = User::where('email', $credentials['email'])->first();

        if ($user && Hash::check($credentials['password'], $user->password) && $user->status == 1) {
            // Authentication successful
            Auth::login($user); // Log in the user

            return redirect()->route('admin.dashboard')->with('success', 'Login successful!');
        }

        // Authentication failed
        return redirect()->back()->with('error', 'Invalid credentials or user not allowed to log in. Please try again.');
    }





    public function dashboard()
    {
        return view('admin.dashboard');
    }
}
