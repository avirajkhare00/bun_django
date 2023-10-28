#!/bin/zsh

PYTHON_LOCATION=$(which python3.11)
DJANGO_ADMIN_LOCATION=$(pwd)/django_package/bin

$PYTHON_LOCATION $DJANGO_ADMIN_LOCATION/django-admin shell
