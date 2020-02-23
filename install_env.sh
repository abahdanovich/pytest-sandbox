#!/usr/bin/env bash

set -e
set -o pipefail

cd "`dirname $0`"

rm -rf ./venv __pycache__ .pytest_cache
python3 -m venv venv
pip install -U pip setuptools wheel pytest pylint