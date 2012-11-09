#!/bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

sudo urpmi --auto \
  qt-creator \
  libqt4-devel \
  libqtwebkit2.2-devel \
  cmake \
  libbzip2-devel \
  libzlib-devel \
  libuuid-devel \
  libopenssl-devel \
  libpam-devel \
  libboost-devel \
  ant
