#!/usr/bin/env bash
GTDB_DIR=${PREFIX}/share/${PKG_NAME}-${PKG_VERSION}-${PKG_BUILDNUM}

echo "WARNING! You must create the Config.py file here: ${PREFIX}/lib/python${PY_VER}/site-packages/Config.py" > "${PREFIX}"/.messages.txt
