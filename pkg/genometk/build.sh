#!/bin/bash

# install python libraries
python -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv

# copy main genometk python script
chmod +x bin/genometk
cp bin/genometk ${PREFIX}/bin/

mkdir ${PREFIX}/genometk
cp genometk/VERSION ${PREFIX}/genometk
