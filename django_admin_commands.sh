#!/bin/zsh

set -ex
PYTHON_LOCATION=$(which python3.11)
DJANGO_ADMIN_LOCATION=$(pwd)/django_package/bin

# $PYTHON_LOCATION $(pwd)/django_settings_pkg/settings/settings.py

DJANGO_SETTINGS_MODULE=$(pwd)/django_settings_pkg.settings.settings $PYTHON_LOCATION -m django_settings_pkg.settings $DJANGO_ADMIN_LOCATION/django-admin dbshell
# $PYTHON_LOCATION -m $(pwd)/django_settings_pkg.settings $DJANGO_ADMIN_LOCATION/django-admin dbshell

#  -> !/opt/homebrew/opt/python@3.11/bin/python3.11 --< this will autogenerate, once we scaffold
# -*- coding: utf-8 -*-
# import re
# import sys