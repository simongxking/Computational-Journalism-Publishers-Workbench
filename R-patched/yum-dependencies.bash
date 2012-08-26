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

# R-compiled
yum install -y \
  mlocate \
  gcc-gfortran \
  gcc-c++ \
  java-1.7.0-openjdk-devel \
  readline-devel \
  libXt-devel \
  libX11-devel \
  libXmu-devel \
  pango-devel \
  cairo-devel \
  tk-devel \
  libtiff-devel \
  texinfo \
  icu \
  libicu-devel

# Packages
yum install -y \
  freeglut-devel \
  fftw-devel \
  gd-devel \
  gsl-devel \
  libcurl-devel \
  wordnet-devel \
  libsndfile-devel

# WordNet environment variable
cp wordnet-yum.sh /etc/profile.d/ # set WordNet home
source /etc/profile
set|grep WNHOME
