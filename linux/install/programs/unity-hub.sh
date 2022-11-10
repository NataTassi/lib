sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list' # add Unity Hub repo
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add - # add public signing key
sudo apt update && sudo apt-get install -y unityhub

# Install libssl 1.1:
file="libssl1.1_1.1.0g-2ubuntu4_amd64.deb"
wget -qq --show-progress "http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/$file"
sudo apt-get install -y ./$file
