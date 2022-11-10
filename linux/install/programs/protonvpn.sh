wget -q "https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb" -O protonvpn_repo.deb
sudo apt-get install -y ./protonvpn_repo.deb
sudo apt-get update
sudo apt-get install -y protonvpn
