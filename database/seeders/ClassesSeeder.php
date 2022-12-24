<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class ClassesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Classes::factory(20)
            ->for(User::find(1))
            ->create();
    }
}
