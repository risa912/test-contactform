@extends('layouts.app')

@section('css')
<link rel="stylesheet" href="{{ asset('css/index.css') }}">
@endsection

@php
    $noHeaderButtons = true; 
@endphp

@section('content')
    <div class="contact-form__content">
        <h2 class="contact-form__heading">Contact</h2>
        <div class="contact-form__inner">
            <form class="form" action="confirm" method="post">
                @csrf
                <div class="form__group">
                    <div class="form__group-title">
                        <span class="form__label--item required">お名前</span>
                    </div>
                    <div class="form__group-content">
                        <div class="form__input--name">
                            <div class="form__input--name">
                                <input type="text" name="first_name" placeholder="例：山田" value="{{ old('first_name') }}">
                                <input type="text" name="last_name" placeholder="例：太郎" class="name-input" value="{{ old('last_name') }}">
                            </div>
                            <div class="form__error">
                                <span>
                                @error('first_name')
                                    {{ $message }}
                                @enderror
                                </span>
                                <span>
                                @error('last_name')
                                    {{ $message }}
                                @enderror
                                </span>    
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 性別 -->
                <div class="form__group">
                    <div class="form__group-title">
                        <span class="form__label--item required">性別</span>
                    </div>
                    <div class="form__group-content-box">
                        <label class="contact-form__gender-label">
                            <input class="contact-form__gender-input" type="radio" name="gender" value="1" @checked(old('gender') == '1')> 男性
                        </label>
                        <label class="contact-form__gender-label">
                            <input class="contact-form__gender-input" type="radio" name="gender" value="2" @checked(old('gender') == '2')> 女性
                        </label>
                        <label class="contact-form__gender-label">
                            <input class="contact-form__gender-input" type="radio" name="gender" value="3" @checked(old('gender') == '3')> その他
                        </label>
                    </div>
                    <div class="form__error">
                        @error('gender')
                            {{ $message }}
                        @enderror
                    </div>
                </div>
                <!-- メールアドレス -->
                <div class="form__group">
                    <div class="form__group-title">
                        <span class="form__label--item required">メールアドレス</span>
                    </div>
                    <div class="form__group-content">
                        <div class="form__input--text">
                            <input type="email" name="email" placeholder="test@example.com" value="{{ old('email') }}" />
                        </div>
                        <div class="form__error">
                            @error('email')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                </div>
                <!-- 電話番号 -->
                <div class="form__group">
                    <div class="form__group-title">
                        <span class="form__label--item required">電話番号</span>
                    </div>
                    <div class="form__group-content">
                        <div class="form__input--tell">
                            <input type="tell" name="tell1" placeholder="080" maxlength="3" value="{{ old('tel1') }}">
                            <span class="tel-hyphen">-</span>
                            <input type="tell" name="tell2" placeholder="1234" maxlength="4" value="{{ old('tel2') }}">
                            <span class="tell-hyphen">-</span>
                            <input type="tell" name="tell3" placeholder="5678" maxlength="4" value="{{ old('tell3') }}">
                        </div>
                        <div class="form__error">
                            @error('tel')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                </div>
                <!-- 住所 -->
                <div class="form__group">
                    <div class="form__group-title">
                        <span class="form__label--item required">住所</span>
                    </div>
                    <div class="form__group-content">
                        <div class="form__input--text">
                            <input type="text" name="address" placeholder="例：東京都渋谷区千駄ヶ谷1-2-3" value="{{ old('address') }}" />
                        </div>
                        <div class="form__error">
                            @error('address')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                </div>
                <!-- 建物名 -->
                <div class="form__group">
                    <div class="form__group-title">
                        <span class="form__label--item required">建物名</span>
                    </div>
                    <div class="form__group-content">
                        <div class="form__input--text">
                            <input type="text" name="building" placeholder="例：千駄ヶ谷マンション101" value="{{ old('building') }}" />
                        </div>
                        <div class="form__error">
                            @error('building')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                </div>
                <!-- お問い合わせの種類 -->
                <div class="form__group">
                    <div class="form__group-title">
                        <span class="form__label--item required">お問い合わせの種類</span>
                    </div>
                    <div class="form__group-content">
                        <select name="category_id">
                            <option value="" selected disabled>選択してください</option>
                            @foreach($categories as $category)
                            <option value="{{ $category->id }}">{{ $category->content }}</option>
                            @endforeach
                        </select>
                        <div class="form__error">
                            @error('category_id')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                </div>
                <!-- お問い合わせ内容 -->
                <div class="form__group">
                    <div class="form__group-title">
                        <span class="form__label--item required">お問い合わせ内容</span>
                    </div>
                    <div class="form__group-detail">
                        <div class="form__input--textarea">
                            <textarea name="detail" placeholder="お問合せ内容をご記載ください">{{ old('detail') }}</textarea>
                        </div>
                        <div class="form__error">
                            @error('detail')
                                {{ $message }}
                            @enderror
                        </div>
                    </div>
                </div>   
                <div class="form__button">
                    <button class="form__button-submit" type="submit">画面確認</button>
                </div>
            </form>
        </div>
    </div>
@endsection