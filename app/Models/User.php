<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

use Illuminate\Support\Facades\Route;


class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'role',
        'suspended', // Add this to allow mass assignment
        'google_id'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    protected static function booted(): void
    {
        static::creating(function (User $user) {


            dd(request());

            // // Skip the logic if the request is for the specific route
            // if (request()->routeIs('admin.users.create')) {
            //     return; // Skip setting the default role
            // }

            // Set the default role for all other cases
            $user->role = 'user';
        });
    }

    public function hasRole(string $role): bool
    {
        return $this->role === $role; // Assuming 'role' is a column in your users table
    }

    protected $casts = [
        'suspended' => 'boolean', // Ensure this is treated as a boolean
    ];


}
