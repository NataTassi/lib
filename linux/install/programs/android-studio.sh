file="android-studio-2021.3.1.17-linux.tar.gz"
wget -qq --show-progress "https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.3.1.17/$file"
sudo tar xf $file -C /opt
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 # Required libraries for 64-bit machines
sudo chown -R `whoami`: /opt/android-studio # Change Android install dir owner to the cur user

# Add JAVA_HOME env var:
sudo sh -c "printf '\nexport JAVA_HOME=\$(readlink -f /usr/bin/javac | sed \"s:/bin/javac::\")' >> /etc/profile"
. /etc/profile

# Install Android SDK in /opt/android-sdk:
sudo mkdir /opt/android-sdk
sudo chown `whoami`: /opt/android-sdk
/opt/android-studio/bin/studio.sh
echo "Perform custom SDK installation!"

# Configure VM acceleration on Linux (Ubuntu 18.10 or later; see https://help.ubuntu.com/community/KVM/Installation):
sudo apt-get install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
sudo adduser `whoami` libvirt
sudo adduser `whoami` kvm
virsh list --all  # Verify installation (you should get no messages)

# Create launcher:
cat << 'EOF' > android-studio.desktop
[Desktop Entry]
Name=Android Studio
Comment=Official IDE to develop Android apps.
Terminal=false
Exec=/opt/android-studio/bin/studio.sh
Icon=/opt/android-studio/bin/studio.svg
Type=Application
Categories=Development;IDE;
EOF
sudo mv android-studio.desktop /usr/share/applications
