@extends('layouts.app')

@php
    $noHeader = true; 
@endphp

@section('css')
<link rel="stylesheet" href="{{ asset('css/thanks.css') }}">
@endsection

@section('content')
    <div class="thanks">
        <h1 class="thanks-title">Thankyou</h1>
        <div class="thanks__content">
            <div class="thanks__heading">
                <p class="thanks__text">お問い合わせありがとうございました</p>
                <a href="/" class="home-btn">HOME</a>
            </div>
        </div>
    </div>
@endsection