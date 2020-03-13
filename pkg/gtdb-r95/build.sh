#!/bin/bash

# Create a directory to store the source content.
GTDB_DIR=${PREFIX}/share/${PKG_NAME}-${PKG_VERSION}-${PKG_BUILDNUM}
mkdir GTDB_DIR
cp -r . ${GTDB_DIR}

# Symlink the main binary.
chmod +x ${GTDB_DIR}/src/gtdb.py
ln -s ${GTDB_DIR}/src/gtdb.py ${PREFIX}/bin/gtdb

# Setup the python package location
export PYTHONPATH=${GTDB_DIR}/src

