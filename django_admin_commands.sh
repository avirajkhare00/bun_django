#!/bin/zsh

set -ex
export PYTHON_LOCATION=$(which python3.11)
export PYTHONPATH=$(which python3.11):$(pwd)/django_settings_pkg
export DJANGO_ADMIN_LOCATION=$(pwd)/django_package/bin

# $PYTHON_LOCATION $(pwd)/django_settings_pkg/settings/settings.py

# taking this command for reference:
# django-admin shell --command="import django; print(django.__version__)"

# $PYTHON_LOCATION $DJANGO_ADMIN_LOCATION/django-admin shell --command="import django; print(django.__version__)"
# $PYTHON_LOCATION -m $(pwd)/django_settings_pkg.settings $DJANGO_ADMIN_LOCATION/django-admin dbshell

#  -> !/opt/homebrew/opt/python@3.11/bin/python3.11 --< this will autogenerate, once we scaffold
# -*- coding: utf-8 -*-
# import re
# import sys

$(which bun) server.ts
