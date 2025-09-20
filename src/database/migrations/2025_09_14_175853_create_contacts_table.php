<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContactsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->foreignId('category_id')->constrained('categories'); // NOT NULL, 外部キー
            $table->string('first_name'); // デフォルト255文字
            $table->string('last_name');  // デフォルト255文字
            $table->tinyInteger('gender'); 
            $table->string('email');      // デフォルト255文字
            $table->string('tel');        // デフォルト255文字
            $table->string('address');    // デフォルト255文字
            $table->string('building')->nullable(); 
            $table->text('detail');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('contacts');
    }
}
