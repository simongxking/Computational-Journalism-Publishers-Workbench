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

echo "Removing guest tools / additions already installed"
echo "You will need to authenticate"
sudo apt-get purge -y \
  open-vm-dkms \
  open-vm-toolbox \
  open-vm-tools \
  open-vm-tools-dbg \
  open-vm-tools-dev \
  virtualbox-guest-dkms \
  virtualbox-guest-source \
  virtualbox-guest-utils \
  virtualbox-guest-x11
echo "Rebooting in 15 seconds"
sleep 15
sudo /sbin/reboot
