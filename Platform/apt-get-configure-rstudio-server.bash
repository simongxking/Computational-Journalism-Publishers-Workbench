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

sudo -H useradd -r rstudio-server
sudo -H cp /usr/local/lib/rstudio-server/extras/init.d/debian/rstudio-server /etc/init.d
sudo -H chmod +x /etc/init.d/rstudio-server
sudo -H cp /usr/local/lib/rstudio-server/extras/upstart/rstudio-server.conf /etc/init/
sudo -H ln -f -s /usr/local/lib/rstudio-server/bin/rstudio-server \
  /usr/sbin/rstudio-server
sudo -H rstudio-server start

echo "Opening TCP port 8787"
sudo -H ufw enable
sudo -H ufw allow 8787/tcp
sudo -H ufw status verbose
