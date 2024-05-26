<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', function () {
    $result = ['status' => 200, 'message' => 'service is running.'];

    return response($result, $result['status']);
});

