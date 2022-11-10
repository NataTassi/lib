wget -q https://github.com/aristocratos/btop/releases/download/v1.2.12/btop-x86_64-linux-musl.tbz -O btop.tbz
mkdir btop
tar xjf btop.tbz -C btop
cd btop
sudo make install
cd ..
rm -r btop btop.tbz
