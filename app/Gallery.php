<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    protected $fillable  = ['user_id', 'title', 'image', 'type'];

    use HasFactory;
}
