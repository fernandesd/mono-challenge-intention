<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;

    protected $fillable = [
        'number',
        'street',
        'complement',
        'postcode',
        'user_id',
        'intention_id',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
