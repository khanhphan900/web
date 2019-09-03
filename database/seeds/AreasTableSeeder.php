<?php

use App\Area;
use Illuminate\Database\Seeder;

class AreasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $array=['Hải Châu', 'Cẩm Lệ', 'Liên Chiểu', 'Ngũ Hành Sơn', 'Sơn Trà', 'Thanh Khê'];

        for($i=0; $i<count($array); $i++){
            Area::create([
                'name'=>$array[$i]
            ]);
        }
    }
}
