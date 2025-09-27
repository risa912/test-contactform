<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Contact;
use App\Models\Category;

class ContactFactory extends Factory
{
    protected $model = Contact::class;

    public function definition()
    {
        return [
            'category_id' => Category::inRandomOrder()->first()->id, // ランダムなカテゴリ
            'first_name'  => $this->faker->lastName(),
            'last_name'   => $this->faker->firstName(),
            'gender'      => $this->faker->randomElement(1, 2, 3), // 1:男性, 2:女性, 3:その他
            'email' => $this->faker->safeEmail(),
            'tel'         => $this->faker->phoneNumber(), 
            'address' => $this->faker->city() . $this->faker->streetAddress(), // 市区町村 + 番地
            'building'    => $this->faker->optional()->secondaryAddress,
            'detail' => $this->faker->text(120),
        ];
    }
}
