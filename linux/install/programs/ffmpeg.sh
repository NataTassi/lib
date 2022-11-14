sudo add-apt-repository -y ppa:savoury1/ffmpeg5
sudo apt-get update
sudo apt-get install -y ffmpeg

# Optionally get static builds:
# wget -qq --show-progress https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
# wget -qq https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz.md5
# md5sum -c ffmpeg-git-amd64-static.tar.xz.md5
# tar xf ffmpeg-git-amd64-static.tar.xz
