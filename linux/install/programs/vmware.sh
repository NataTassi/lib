vmware_installer="vmware_player_16.2.4.bundle"
wget -q --show-progress https://download3.vmware.com/software/WKST-PLAYER-1624/VMware-Player-Full-16.2.4-20089737.x86_64.bundle -O $vmware_installer
chmod +x $vmware_installer
sudo ./$vmware_installer
sudo apt update && sudo apt install gcc make
sudo vmware-modconfig --console --install-all
