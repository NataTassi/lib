build="Ghidra_10.1.5_build"
file="ghidra_10.1.5_PUBLIC_20220726.zip"
# wget -q --show-progress "https://github.com/NationalSecurityAgency/ghidra/releases/download/$build/$file"
install_dir="/opt/ghidra"
sudo mkdir -p $install_dir
sudo unzip -qq $file -d $install_dir
cd $install_dir
subdir=$(ls)
sudo mv ${subdir}/* .
sudo rm -rf $subdir
sudo ln -s /opt/ghidra/ghidraRun /usr/bin/ghidra
