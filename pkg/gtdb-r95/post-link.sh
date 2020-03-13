#!/usr/bin/env bash
GTDB_DIR=${PREFIX}/share/${PKG_NAME}-${PKG_VERSION}-${PKG_BUILDNUM}

echo "WARNING! You must create the Config.py file here: cp ${i} ${PREFIX}/lib/python${PY_VER}/site-packages/Config.py.
If you don't, you WILL get errors which are hard to debug!!" > "${PREFIX}"/.messages.txt
