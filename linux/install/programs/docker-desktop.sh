# Instructions from https://docs.docker.com/desktop/install/ubuntu

sudo apt-get update -qq
sudo apt-get install -qq gnome-terminal -y

# Set up Docker’s package repository:
sudo apt-get install -qq ca-certificates curl gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

docker_version=4.12.0
wget -q --show-progress https://desktop.docker.com/linux/main/amd64/docker-desktop-${docker_version}-amd64.deb
sudo apt-get install -qq ./docker-desktop-${docker_version}-amd64.deb -y
