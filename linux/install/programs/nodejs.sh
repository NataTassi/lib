NODE_VERSION=18.16.1
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.bashrc
nvm install $NODE_VERSION
