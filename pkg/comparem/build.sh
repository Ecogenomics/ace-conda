#!/bin/bash

# install python libraries
python -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv

# copy main tax2tree python script
mkdir -p ${PREFIX}/bin/

chmod +x bin/comparem
cp bin/comparem ${PREFIX}/bin/
