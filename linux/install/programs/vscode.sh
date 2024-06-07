wget -q --show-progress "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O vscode_x64.deb
sudo dpkg -i vscode_x64.deb

# Install extensions: Astro, Dev Containers, Docker, ESLint, GitHub Copilot, GitHub Copilot Chat, Live Share, MDX, PHP Intelephense, Prettier - Code formatter, Pylance, Python, Python Debugger, Tailwind CSS IntelliSense, Vim, vscode-pdf
extensions=("astro-build.astro-vscode" "ms-vscode-remote.remote-containers" "ms-azuretools.vscode-docker" "dbaeumer.vscode-eslint" "GitHub.copilot" "GitHub.copilot-chat" "ms-vsliveshare.vsliveshare" "unifiedjs.vscode-mdx" "bmewburn.vscode-intelephense-client" "esbenp.prettier-vscode" "ms-python.vscode-pylance" "ms-python.python" "ms-python.debugpy" "bradlc.vscode-tailwindcss" "vscodevim.vim" "tomoki1207.pdf")

for extension in ${extensions[*]}; do
	code --install-extension $extension
done
