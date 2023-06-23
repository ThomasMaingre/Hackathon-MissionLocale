<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PageContact extends Model
{
    protected $table = 'page_accueil';

    protected $fillable = ['image', 'html'];
}
