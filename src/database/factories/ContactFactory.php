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
            'first_name'  => $this->faker->firstName,
            'last_name'   => $this->faker->lastName,
            'gender'      => $this->faker->numberBetween(1, 3), // 1:男性, 2:女性, 3:その他
            'email'       => $this->faker->unique()->safeEmail,
            'tel'         => $this->faker->numerify('0#########'), // 例: 08012345678
            'address'     => $this->faker->address,
            'building'    => $this->faker->optional()->secondaryAddress,
            'detail'      => $this->faker->paragraph,
            'created_at'  => now(),
            'updated_at'  => now(),
        ];
    }
}
