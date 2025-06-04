
# Интернет-магазина техники Apple с использованием Vue.js, Laravel, Filament

## О проекте
Интернет-магазин техники Apple представляет собой веб-платформу для продажи оригинальной продукции Apple. В основе архитектуры магазина лежит микросервисный подход, обеспечивающий масштабируемость и надежность.
Данный интернет-магазин построен на основе Vue.js (Frontend) и Laravel (Backend)  с административной панелью, реализованной через Filament..

### Основные возможности
- Каталог товаров с актуальными характеристиками и ценами
- Выбор товаров по заданным параметрам
- Создание аккаунта пользователя, его регистрация, аутентификация
- Оформление заказов
- В админпанеле управление пользователями, товарами, включая обработку заказов
- API для взаимодействия с внешними сервисами и внутренними системами

## Laravel

[![Latest Version on Packagist](https://img.shields.io/packagist/v/laravel/framework.svg?style=flat-square)](https://packagist.org/packages/laravel/framework)
[![Total Downloads](https://img.shields.io/packagist/dt/laravel/framework.svg?style=flat-square)](https://packagist.org/packages/laravel/framework)
[![GitHub License](https://img.shields.io/github/license/laravel/framework.svg?style=flat-square)](

### Технологический стек

- Frontend: Vue.js  (Composition API, Vue Router, Pinia)
- Backend: Laravel (Eloquent ORM,  API Resources)
- Админ-панель: Filament Admin
- База данных: MySQL
- Аутентификация: Laravel JWT
- Хранение данных: hosting
- API: REST API

### Архитектура

#### 1. Фронтенд (Vue.js)

- Vue Router для управления маршрутами
- Pinia для управления состоянием
- Axios для работы с API
- UI-библиотека (Bootstrap)
- 
#### 2. Бэкенд (Laravel)

- Контроллеры и ресурсы API
- Eloquent ORM для работы с базой данных
- Laravel Queues для обработки фоновых задач
- Логирование через Laravel Telescope

#### 3. Административная панель (Filament)

- Управление товарами (CRUD)
- Менеджмент заказов (просмотр, изменение статусов)
- Статистика и аналитика
- Управление пользователями

## Установка

### 📌 Требования
Перед установкой убедитесь, что у вас установлены:
- **Docker** и **DockerHub**
- **Git** для управления репозиторием
- **Node.js** для работы с фронтендом


#### 📌 Ссылки для установки необходимых инструментов

[![Docker](https://img.shields.io/badge/Docker-Install-blue?logo=docker)](https://www.docker.com/get-started)
[![DockerHub](https://img.shields.io/badge/DockerHub-Explore-blue?logo=docker)](https://hub.docker.com/)
[![Git](https://img.shields.io/badge/Git-Download-orange?logo=git)](https://git-scm.com/downloads)
[![Node.js](https://img.shields.io/badge/Node.js-Install-green?logo=node.js)](https://nodejs.org/en/download/)
[![Composer](https://img.shields.io/badge/Composer-Download-purple?logo=composer)](https://getcomposer.org/download/)

### 📌 Установка проекта

1. Создайте новую папку для проекта и в **IDE** открыть ее в терминале (например, *apple-store*)
   ```bash
   mkdir apple-store && cd apple-store
   ```
2. Клонировать удаленный репозиторий:
   ```bash
   git clone https://github.com/PUfimcev/Apple_store_project.git
   ```
3. В созданной папке запустите контенеры в sail
   ```bash
   ./vendor/bin/sail up -d
   ```
4. Установите зависимости с помощью Composer:
   ```bash
   ./vendor/bin/sail composer install
   ```
   
5. Скопируйте файл `.env.example` в `.env` :
   ```bash
    cp .env.example .env
    ```
- и в `.env` настройте параметры подключения к базе данных:
   ```env
   DB_CONNECTION=mysql
   DB_HOST=mysql
   DB_PORT=3306
   DB_DATABASE=AppleStoreDev
   DB_USERNAME=sail
   DB_PASSWORD=password
   ```
- также добавть в `.env`:
    ```env
    AUTH_GUARD=api
    ```
- и заменить `local`  на  `public` в следующей строке:
   ```env
   FILESYSTEM_DISK=public
   ```
6. Cгенерируйте ключ приложения:
   ```bash
   ./vendor/bin/sail artisan key:generate
   ```
7. Сгенерируйте ключ  JWT:
   ```bash
   ./vendor/bin/sail artisan jwt:secret
   ```
- и добавте в `.env`:
   ```env
   JWT_SECRET=ваш_сгенерированный_ключ
   ```
  
8. Пересоберите контейнеры
   ```bash
   ./vendor/bin/sail down && sail up -d
   ```
9. Очистите кеш конфигурации (чтобы Laravel прочитал новые `.env`):
   ```bash
   ./vendor/bin/sail artisan config:clear
   ./vendor/bin/sail artisan cache:clear
   ```
   
10. Cоздать символическую ссылку:
   ```bash
   ./vendor/bin/sail artisan storage:link
   ```
   
11. Скопировать zip-файл `public.zip` (в корне проекта)  с изображениями в папку `storage/app/` и распаковать его:
    ```bash
    unzip public.zip -d ./storage/app/
    ```
12. Импортировать базу данных из файла `AppleStoreDev.sql` (находится в корне проекта) в вашу базу данных MySQL. Вы можете использовать phpMyAdmin или командную строку MySQL для этого:
    ```bash
    mysql -u sail -p -h mysql AppleStoreDev < AppleStoreDev.sql
    ```
14. Установите зависимости для фронтенда:
    ```bash
    cd frontend
    npm install
    ```
15. В папке `frontend` в корне создайте файл `.env` и добавьте следующие строки:
    ```env
    VITE_API_BASE_URL=http://localhost
    ```
16. Заново пересоберите контейнеры
   ```bash
   ./vendor/bin/sail down && sail up -d
   ```

17. Откройте терминал в папке `frontend` и запустите Vue.js сервер разработки:
    ```bash
    npm run dev
    ```
    - дополниетльно можно запустить в теримнале в главной папке команды:
    ```bash
    ./vendor/bin/sail artisan queue:work
    ./vendor/bin/sail artisan schedule:work
    ```
    
18. Откройте браузер и перейдите по адресу `http://localhost:5173` для доступа к фронтенду.


19. Для доступа к административной панели Filament, перейдите по адресу `http://localhost/admin` и войдите с учетными данными администратора:
     - **Email:** superadmin@admin.com
     - **Пароль:** 12345678
     
