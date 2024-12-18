<?php
// app/Models/Message.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Messages extends Model
{
    use HasFactory;

    // Fillable fields for mass assignment
    protected $fillable = [
        'user_id', // foreign key to the users table
        'text', // message text (max 500 characters)
    ];

    // Relationship: A message belongs to a user (author)
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Validation rule for the text field (max 500 characters)
    public static function rules()
    {
        return [
            'user_id' => 'required|exists:users,id',
            'text' => 'required|string|max:500',
        ];
    }

}
