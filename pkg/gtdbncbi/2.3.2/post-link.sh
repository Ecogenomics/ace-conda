#!/usr/bin/env bash
echo "WARNING! You must create the Config.py file here: ${PREFIX}/lib/python[VERSION]/site-packages/gtdb/Config.py" >> "${PREFIX}"/.messages.txt
echo "This package uses fastANI 1.1, if you want 1.3 run: wget https://github.com/ParBLiSS/FastANI/releases/download/v1.3/fastANI-Linux64-v1.3.zip && unzip fastANI-Linux64-v1.3.zip && mv fastANI ${PREFIX}/bin/" >> "${PREFIX}"/.messages.txt
