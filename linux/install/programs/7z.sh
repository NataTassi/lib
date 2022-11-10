wget -q --show-progress https://www.7-zip.org/a/7z2201-linux-x64.tar.xz -O 7z.tar.xz
mkdir 7z && tar -xf 7z.tar.xz -C 7z
sudo cp 7z/7zz /usr/local/bin/7z
rm -rf 7z 7z.tar.xz
