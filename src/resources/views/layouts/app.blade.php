<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FashionablyLate</title>
    <link rel="stylesheet" href="{{ asset('css/sanitize.css') }}">
    <link rel="stylesheet" href="{{ asset('css/common.css') }}">
    @yield('css')
</head>
<body>

@if(!isset($noHeader) || !$noHeader)
    <header class="header">
        <div class="header__inner">
            <a class="header__logo" href="/">FashionablyLate</a>

            {{-- ログイン・登録ボタンの表示制御 --}}
            @if(!isset($noHeaderButtons) || !$noHeaderButtons)
                @if(Route::currentRouteName() === 'register')
                    <a class="header__button" href="{{ route('login') }}">login</a>
                @elseif(Route::currentRouteName() === 'login')
                    <a class="header__button" href="{{ route('register') }}">register</a>
                @elseif(Route::currentRouteName() === 'admin')
                    <a class="header__button" href="{{ route('logout') }}"
                       onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                        logout
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                @endif
            @endif
        </div>
    </header>
@endif
<main>
    @yield('content')
</main>
</body>
</html>