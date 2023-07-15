#!/bin/bash

PROJECT=$(basename `pwd`)

[ -z $PROJECT ] && echo "Project name angeben" && exit 1

rm -rf data manage.py website db.sqlite3 $PROJECT

docker compose run web django-admin startproject $PROJECT .

docker compose up -d
