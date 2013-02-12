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

echo 'Installing desktop add-ons'
if [ -e "/usr/bin/apt-get" ]
then
  ./apt-get-desktop.bash 2>&1 | tee desktop.log
elif [ -e "/usr/bin/yum" ]
then
  ./yum-desktop.bash 2>&1 | tee desktop.log
fi
