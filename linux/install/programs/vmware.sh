installer="VMware-Player-Full-17.0.2-21581411.x86_64.bundle"
wget -q --show-progress "https://download3.vmware.com/software/WKST-PLAYER-1702/$installer"
sudo apt install gcc build-essential -y # install required packages
chmod +x $installer
sudo ./$installer
sudo vmware-modconfig --console --install-all # install kernel modules

if [[ `mokutil --sb-state` == "SecureBoot enabled" ]]; then
	echo You either need to disable Secure Boot or sign the required VMware kernel modules, see https://askubuntu.com/a/1145426
	echo Then, run \'sudo vmware-modconfig --console --install-all\'
	exit
fi

vmplayer
