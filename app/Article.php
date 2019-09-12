<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    public function Area(){
        return $this->belongsTo('App\Area');
    }

    public function Category(){
        return $this->belongsTo('App\Category');
    }
	public function User(){
        return $this->belongsTo('App\User');
    }

}
