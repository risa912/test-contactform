@extends('layouts.app')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/sanitize.css') }}">
    <link rel="stylesheet" href="{{ asset('css/admin.css') }}">
@endsection

@section('content')
    <div class="admin__content">
        <div class="admin__heading">
            <h2>Admin</h2>
        </div>
        <div class="admin__box">
            <form class="admin-form" action="">
                <div class="admin-form__item">
                    <input class="admin-form__item-input" type="text" placeholder="名前やメールアドレスを入力してください" />
                    <select class="admin-form__item-select">
                        <option value="" selected>性別</option>
                        <option value="male">男性</option>
                        <option value="female">女性</option>
                        <option value="other">その他</option>
                    </select>
                    <select class="admin-form__item-select" name="category">
                        <option value="" selected>お問い合わせの種類</option>
                        <option value="product">商品の返品・交換</option>
                        <option value="payment">支払いについて</option>
                        <option value="shipping">配送について</option>
                        <option value="other">その他</option>
                    </select>
                    <input class="admin-form__item-date" type="date" />

                    <button class="search-form__button-submit" type="submit">検索</button>
                    <button class="reset-form__button-submit" type="reset">リセット</button>
                </div>
            </form>
        </div>
        <!-- エクスポートボタン & ページネーション -->
        <div class="admin__tools">
            <button class="btn-export">エクスポート</button>
            <div class="pagination">
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
            </div>
        </div>

        <!-- 表（データ表示） -->
        <div class="admin__table">
            <table class="admin-table__inner">
                <thead>
                    <tr class="admin-table__row">
                        <th>お名前</th>
                        <th>性別</th>
                        <th>メールアドレス</th>
                        <th>お問い合わせの種類</th>
                    </tr>
                </thead>
                <tr class="admin-table__row">
                    <td class="adamin-table__item">山田 太郎</td>
                    <td class="adamin-table__item">男性</td>
                    <td class="adamin-table__item">メールアドレス</td>
                    <td class="adamin-table__item">
                        <form class="detail-form__button">
                            <button class="detail-form__button-submit" type="submit">詳細</button>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
@endsection