<?php

use App\Area;
use App\Category;
use App\Article;
use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class ArticlesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();
        $Area = Area::pluck('id')->toArray();
        $User = User::pluck('id')->toArray();
        $Category = Category::pluck('id')->toArray();
        foreach (range(1, 20) as $index) {
            $AreaIdRand = $Area[array_rand($Area)];
            $CategoryIdRand = $Category[array_rand($Category)];
            $UserIdRand = $User[array_rand($User)];
            Article::create([
                'title' => $title =  $faker->sentence($nbWords = rand(5, 9),
                $variableNbWords = true),
                'img' => $faker->image($dir = null, $width = 640, $height = 480, 'cats', false),
                'content' => $faker->paragraph,
                'phone' => $faker->tollFreePhoneNumber,
                'price' => $faker->ean8,
                'area_id'=> $AreaIdRand,
                'category_id'=> $CategoryIdRand,
                'user_id' => $UserIdRand
            ]);
        }
    }
}
