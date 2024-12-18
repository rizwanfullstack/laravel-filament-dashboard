<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Hash;

class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->label('Display Name')
                    ->required()
                    ->maxLength(255),

                Forms\Components\TextInput::make('email')
                    ->email()
                    ->required(),

                Forms\Components\Select::make('role')
                    ->options([
                        'user' => 'user',
                        'admin' => 'admin',
                    ])
                    ->required(),

                // Add a password field for user creation and ensure it is hidden on edit
                Forms\Components\TextInput::make('password')
                    ->password()
                    ->required()
                    ->hiddenOn('edit')
                    ->label('Password')
                    ->minLength(8),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->label('Display Name')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('email')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Signup Date')
                    ->dateTime('d/m/Y H:i'),

                Tables\Columns\BooleanColumn::make('suspended')
                    ->label('Suspended')
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\Action::make('toggleSuspend')
                    ->label('Suspend/Unsuspend')
                    ->icon(fn ($record) => $record->suspended ? 'heroicon-o-x-circle' : 'heroicon-o-check-circle')
                    ->color(fn ($record) => $record->suspended ? 'danger' : 'success')
                    ->action(function ($record) {
                        $record->suspended = !$record->suspended;
                        $record->save();
                }),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }

    // Ensure the password is hashed when creating or updating a user
    public static function afterCreate(User $user): void
    {
        if ($user->password) {
            $user->password = Hash::make($user->password);
            $user->save();
        }
    }

    public static function afterUpdate(User $user): void
    {
        if ($user->password) {
            $user->password = Hash::make($user->password);
            $user->save();
        }
    }
}
