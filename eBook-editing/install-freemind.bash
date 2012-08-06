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

# use distro-supplied freemind for now
if [ -e "/usr/bin/apt-get" ]
then
  apt-get install -y freemind
elif [ -e "/usr/bin/yum" ]
then
  yum install -y freemind
elif [ -e "/usr/bin/zypper" ]
then
  zypper install -y freemind
fi