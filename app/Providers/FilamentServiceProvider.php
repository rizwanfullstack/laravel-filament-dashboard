<?php

namespace App\Providers;

use Filament\Facades\Filament;
use Illuminate\Support\ServiceProvider;

class FilamentServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        // Restrict Filament admin access to admins only
        Filament::auth(function () {
            return auth()->user() && auth()->user()->hasRole('admin'); // Use your role-check logic here
        });
    }
}
