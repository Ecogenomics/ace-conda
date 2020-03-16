#!/bin/sh
set -x -e

BUILD_ID=${PKG_NAME}-${PKG_VERSION}-${PKG_BUILDNUM}
PS_LIB=${PREFIX}/share/${BUILD_ID}

mkdir -p ${PREFIX}/bin
mkdir -p ${PREFIX}/lib
mkdir -p ${PS_LIB}

cp -r * ${PS_LIB}

chmod +x ${PS_LIB}/pfam_search.pl

# Short wrapper script which sets PERL5LIB while running
cat > ${PREFIX}/bin/pfam_search.pl <<EOF
#!/bin/bash
PERL5LIB=${PREFIX}/lib:${PS_LIB} exec ${PS_LIB}/pfam_search.pl "\$@"
EOF
chmod +x $PREFIX/bin/pfam_search.pl

#mkdir -p ${PREFIX}/etc/conda/activate.d ${PREFIX}/etc/conda/deactivate.d
#
#echo "export PERL5LIB=${PERL5LIB}:${PREFIX}/lib:${PS_LIB}" > ${PREFIX}/etc/conda/activate.d/${BUILD_ID}.sh
#chmod a+x ${PREFIX}/etc/conda/activate.d/${BUILD_ID}.sh
#
#echo "unset PERL5LIB" > ${PREFIX}/etc/conda/deactivate.d/${BUILD_ID}.sh
#chmod a+x ${PREFIX}/etc/conda/deactivate.d/${BUILD_ID}.sh
