#!/usr/bin/env bash
GTDB_DIR=${PREFIX}/share/${PKG_NAME}-${PKG_VERSION}-${PKG_BUILDNUM}

echo "
     You must setup the Config.py file here: ${GTDB_DIR}/src/gtdb/Config.py

" > "${PREFIX}"/.messages.txt
