#!/bin/bash

# install python libraries
python -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv

# copy main python script
mkdir -p ${PREFIX}/bin/
(echo "#!/usr/bin/env python" && tail -n +2 bin/genetreetk) > bin/genetreetk_new && mv bin/genetreetk_new bin/genetreetk
chmod +x bin/genetreetk
cp bin/genetreetk ${PREFIX}/bin/
