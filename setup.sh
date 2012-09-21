#!/bin/bash
workingdir=`pwd`
tar -xvf $workingdir/packages.tar.gz
tar -xvf $workingdir/cache.tar.gz
DEBIAN_FRONTEND=noninteractive dpkg -i $workingdir/cache/*.deb
cd $workingdir/cache
dpkg -i gnome-icon-theme-full_3.4.0-0ubuntu1.1_all.deb gnome-shell_3.4.1-0ubuntu2_amd64.deb gnome-core_1%3a3.0+6ubuntu3_amd64.deb gnome-tweak-tool_3.3.4-0ubuntu1_all.deb 
cd $workingdir
chmod +x $workingdir/X11rdp-o-matic.sh
chmod +x $workingdir/RDPsesconfig.sh
cp $workingdir/startwm.sh /etc/xrdp/
$workingdir/X11rdp-o-matic.sh --nocleanup --reuse --justdoit
$workingdir/RDPsesconfig.sh
