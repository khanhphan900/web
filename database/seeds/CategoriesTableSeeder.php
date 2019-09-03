<?php

use App\Category;
use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $array = ["Nhà cửa - đất đai", "Việc làm", "Ô tô - Xe máy", "Điện thoại - phụ kiện", "Máy tính - Linh Kiện"];

        for($i=0; $i<count($array); $i++){
            Category::create([
                'name'=>$array[$i]
            ]);
        }
    }
}
