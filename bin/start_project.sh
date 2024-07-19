#!/bin/bash

echo "ЗАПУСК ПРОЕКТА"
cp $GITHUB_WORKSPACE/backend/.env.example $GITHUB_WORKSPACE/backend/.env
sed -i~ '/^DATABASE_URL=/s/=.*/=mongodb:\/\/localhost:27017\/practicum/' $GITHUB_WORKSPACE/backend/.env
cd $DIR_TESTS/data
docker compose up -d

cd $GITHUB_WORKSPACE/backend/
npm ci
npm run build
npm run start:dev &
