wget -q --show-progress "https://download3.vmware.com/software/WKST-PLAYER-1701/VMware-Player-Full-17.0.1-21139696.x86_64.bundle"
installer="VMware-Player-Full-17.0.1-21139696.x86_64.bundle"
sudo apt install gcc build-essential -y # install required packages
chown +x $installer
sudo ./$installer
sudo vmware-modconfig --console --install-all # install kernel modules
echo "You may need to disable UEFI Secure Boot for VMware to work"
vmplayer
