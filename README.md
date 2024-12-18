# Laravel Filament Dashboard Project

This repository contains a Laravel application with a Filament Admin Dashboard. The project is designed for efficient management and easy scalability. Follow the instructions below to set up and run the project on your local machine.

---

## **Features**
- Laravel with Filament Admin Dashboard.

---

## **Requirements**
Ensure the following are installed on your system:
- **PHP**: >= 8.1
- **Composer**: Latest version
- **Database**: MySQL
- **Git**: For version control

---

## **Project Setup**

### 1. Clone the Repository
```bash
git clone https://github.com/rizwanfullstack/laravel-filament-dashboard
```
### 2. Install Dependecies
```bash
composer install
```
### 3. Make an Admin User
```bash
php artisan make:filament-user
```

### 4. Run Migrations
```bash
php artisan migrate
```

### 5. Env Configurations
```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_database_user
DB_PASSWORD=your_database_password

GOOGLE_CLIENT_ID=
GOOGLE_CLIENT_SECRET=
```