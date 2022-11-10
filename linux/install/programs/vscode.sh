wget -q --show-progress "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O vscode_x64.deb
sudo dpkg -i vscode_x64.deb

# Install extensions: C/C++, Docker, IntelliCode, Python, Vim, vscode-pdf
extensions=("ms-vscode.cpptools" "ms-azuretools.vscode-docker" "VisualStudioExptTeam.vscodeintellicode" "ms-python.python" "vscodevim.vim" "tomoki1207.pdf")

for extension in ${extensions[*]}; do
	code --install-extension $extension
done
