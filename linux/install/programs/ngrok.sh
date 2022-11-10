wget -q --show-progress https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -O ngrok.tgz
sudo tar xvzf ngrok.tgz -C /usr/local/bin
rm ngrok.tgz
# ngrok config add-authtoken <token>
