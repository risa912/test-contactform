<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\RegisterRequest;
use App\Http\Requests\LoginFormRequest; 


class AuthController extends Controller
{
    // 登録フォーム表示
    public function showRegisterForm()
    {
        return view('register');
    }
    
     // 登録処理
    public function register(RegisterRequest $request)
    {
        User::create([
            'name'     => $request->name,
            'email'    => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return redirect('/login')->with('success', '登録完了しました。ログインしてください。');
    }

       // ログインフォーム表示
    public function showLoginForm()
    {
        return view('login');
    }

    // ログイン処理
    public function login(LoginFormRequest $request)
    {
        $credentials = $request->only(['email', 'password']);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            return redirect()->intended('/admin');
        }

        return back()->withErrors([
            'email' => 'メールアドレスかパスワードが違います。',
        ]);
    }

    // ログアウト処理
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login');
    }
}
