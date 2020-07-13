#!/bin/sh
set -x -e

BUILD_ID=${PKG_NAME}-${PKG_VERSION}-${PKG_BUILDNUM}
PS_LIB=${PREFIX}/share/${BUILD_ID}

mkdir -p ${PREFIX}/bin
mkdir -p ${PREFIX}/lib
mkdir -p ${PS_LIB}

cp -r * ${PS_LIB}

chmod +x ${PS_LIB}/alignment_pruner.pl

# Short wrapper script which sets PERL5LIB while running
cat > ${PREFIX}/bin/alignment_pruner.pl <<EOF
#!/bin/bash
PERL5LIB=${PREFIX}/lib:${PS_LIB} exec ${PS_LIB}/alignment_pruner.pl "\$@"
EOF
chmod +x $PREFIX/bin/alignment_pruner.pl
