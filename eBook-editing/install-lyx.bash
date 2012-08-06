#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

mkdir -p /usr/local/src
pushd /usr/local/src
  export WHERE=ftp://ftp.lyx.org/pub/lyx/stable/2.0.x
  export VERSION=2.0.4
  export DIR=lyx-${VERSION}
  export WHAT=${DIR}.tar.xz
  curl ${WHERE}/${WHAT} > ${WHAT}
  rm -fr ${DIR}
  tar xf ${WHAT}
  pushd ${DIR}
    ./configure
    make
    make install
  popd
  
popd