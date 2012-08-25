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

zypper install -t pattern -y devel_qt4
zypper install -y \
  qt-creator \
  patch \
  libQtWebKit-devel \
  build \
  cmake \
  libbz2-devel \
  zlib-devel \
  libuuid-devel \
  libopenssl-devel \
  pam-devel \
  boost-devel \
  ant
