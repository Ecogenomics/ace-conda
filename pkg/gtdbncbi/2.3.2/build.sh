#!/bin/bash

# install python libraries
python -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv

# copy main python script
chmod +x bin/gtdb
cp bin/gtdb ${PREFIX}/bin/
