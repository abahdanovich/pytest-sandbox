#!/usr/bin/env bash

set -e
set -o pipefail

cd "`dirname $0`"

rm -rfv .pytest_cache; 
find mycode tests -depth -type d -name __pycache__ -exec rm -rfv {} \;


rm -rf ./venv
python3 -m venv venv
pip install -U pip setuptools wheel pytest pylint