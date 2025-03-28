#!/bin/bash

# Exit immediately if any of the commands fail
set -e
uv run manage.py migrate
uv run manage.py collectstatic --noinput
