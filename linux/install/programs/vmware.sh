version="17.0.0"
#vmware_installer="vmware_player_${version}.bundle"
#wget -q --show-progress https://download3.vmware.com/software/WKST-PLAYER-1700/VMware-Player-Full-17.0.0-20800274.x86_64.bundle -O $vmware_installer
#chmod +x $vmware_installer
#sudo ./$vmware_installer
#sudo apt update && sudo apt install gcc make
wget -q --show-progress https://github.com/mkubecek/vmware-host-modules/archive/workstation-${version}.tar.gz -O vmware-host-modules-${version}.tar.gz
tar -xf vmware-host-modules-${version}.tar.gz
cd vmware-host-modules-workstation-${version}
tar -cf vmmon.tar vmmon-only
tar -cf vmnet.tar vmnet-only
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all
