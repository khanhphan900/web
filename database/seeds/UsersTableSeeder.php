<?php
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $faker = Faker\Factory::create();
        // for ($i=0; $i < 3; $i++) {
        //     DB::table('users')->insert([
        //         'name' => $faker->name,
        //         'email' => $faker->email,
        //         'password'=>bcrypt('123123'),
        //         'role' => '3'
        //     ]);
        // }
        DB::table('users')->insert([
            'name' => 'Phan Gia Khánh',
            'email' => 'Khanhphan900@gmail.com',
            'password'=>bcrypt('123123'),
            'role' => '1'
        ]);
    }
}
