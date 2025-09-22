<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactRequest;
use App\Models\Contact;

class ContactController extends Controller
{
    // 入力フォーム表示
    public function index()
    {
        $categories = \App\Models\Category::all();
        return view('index', compact('categories'));
    }

    // 確認画面
    public function confirm(ContactRequest $request)
    {
        $contact = $request->only([
            'first_name',
            'last_name',
            'gender',
            'email',
            'tel1',
            'tel2',
            'tel3',
            'address',
            'building',
            'detail',
            'category_id'
        ]);

        // 電話番号結合
        $contact['tel'] = "{$contact['tel1']}-{$contact['tel2']}-{$contact['tel3']}";

        // フルネーム作成
        $contact['full_name'] = "{$contact['last_name']} {$contact['first_name']}";

        // カテゴリー名取得
        $contact['category_label'] = '';
        if (!empty($contact['category_id'])) {
            $category = \App\Models\Category::find($contact['category_id']);
            if ($category) {
                $contact['category_label'] = $category->content;
            }
        }

        return view('confirm', compact('contact'));
    }

    // データ保存
    public function store(ContactRequest $request)
    {
        // 確認画面から送られたデータをそのまま取得
        $contact = $request->only([
            'category_id',
            'first_name',
            'last_name',
            'gender',
            'email',
            'tel',
            'address',
            'building',
            'detail'
        ]);

        Contact::create($contact);

        return view('thanks');
    }
}
