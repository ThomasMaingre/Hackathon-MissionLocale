<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PageGouvernance extends Model
{
    protected $table = 'page_gouvernance';

    protected $fillable = ['image', 'html'];
}
