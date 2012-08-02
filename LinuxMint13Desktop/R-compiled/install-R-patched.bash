#! /bin/bash -v

export WHERE=ftp://ftp.stat.math.ethz.ch/Software/R
export DIR=R-patched
export WHAT=${DIR}.tar.bz2

mkdir -p /usr/local/src
pushd /usr/local/src
rm -f ${WHAT}
curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}

pushd ${DIR}
export R_PAPERSIZE='letter'
export CFLAGS='-O2 -pipe -march=native'
export FFLAGS='-O2 -pipe -march=native'
export CXXFLAGS='-O2 -pipe -march=native'
export FCFLAGS='-O2 -pipe -march=native'
export CORES=`grep 'cpu cores' /proc/cpuinfo | wc -l`
unset JAVA_HOME
mkdir -p ~/R/library; export R_LIBS_USER="~/R/library"
./configure \
  --enable-R-profiling \
  --enable-R-shlib \
  --enable-BLAS-shlib \
  --enable-lto \
  --enable-byte-compiled-packages \
  --enable-openmp \
  --enable-largefile \
  --enable-nls \
  --with-readline \
  --with-tcltk \
  --with-cairo \
  --with-libpng \
  --with-jpeglib \
  --with-recommended-packages \
  --with-ICU \
  --with-x
exit
/usr/bin/time make -j ${CORES}
make install
popd

popd
