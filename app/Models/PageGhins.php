<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PageGhins extends Model
{
    protected $table = 'page_ghins';

    protected $fillable = ['image', 'html'];
}
