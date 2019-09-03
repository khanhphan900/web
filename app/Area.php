<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    public function Article(){
        return $this->hasMany('App\Article');
    }
}
