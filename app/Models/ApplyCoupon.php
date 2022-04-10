<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ApplyCoupon extends Model
{
    use HasFactory;
    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'use_date' => 'datetime',
    ];

    function coupon(){
        return $this->belongsTo(Coupon::class);
    }
}
