#!/bin/bash

echo "[Start containers]"
docker compose up -d

echo "[Copy .env.example to .env]"
docker compose exec laravel cp .env.example .env
docker compose exec nest cp .env.example .env

echo "[Install dependencies]"
docker compose exec laravel composer install
docker compose exec nest npm install

echo "[Generate key]"
docker compose exec laravel php artisan key:generate


echo "App is running on: http://localhost/"
