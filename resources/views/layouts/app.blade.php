<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name') }}</title>

    <style>
        [x-cloak] {
            display: none !important;
        }
    </style>

    @filamentStyles
    @vite('resources/css/app.css')

    <!-- Scripts -->
    {{--    @vite(['resources/sass/app.scss', 'resources/js/app.js'])--}}
</head>
<body>
<body class="antialiased">
<x-filament::topbar>
    <form class="flex items-center space-x-2">
        <input type="text" class="px-3 py-2 border rounded" placeholder="Искать...">
        <button type="submit" class="btn btn-primary">🔍</button>
    </form>
</x-filament::topbar>

{{ $slot }}

@livewire('notifications')
@livewire('database-notifications')

@filamentScripts
@vite('resources/js/app.js')
</body>
</body>
</html>
