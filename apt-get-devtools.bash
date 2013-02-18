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

echo "Installing basic development tools"
sudo apt-get install -y \
  vim \
  git \
  git-gui \
  gitk \
  curl \
  libcurl4-gnutls-dev

# Boost, cmake and Qt
sudo apt-get install -y \
  cmake \
  libboost1.50-all-dev \
  libboost1.50-doc \
  libqt4-dev \
  libqt4-dev-bin \
  libqtwebkit-dev \
  qt4-dev-tools \
  qdevelop \
  qt-sdk \
  qtcreator \
  phonon-backend-gstreamer

# Numeric libraries
sudo apt-get install -y \
  libgsl0-dev \
  libgmp-dev \
  libmpfr-dev
