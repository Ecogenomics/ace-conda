#!/bin/bash

python -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv

# copy main python script
chmod +x src/gtdb.py
cp src/gtdb.py ${PREFIX}/bin/gtdb
