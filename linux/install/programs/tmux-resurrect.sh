sudo git clone https://github.com/tmux-plugins/tmux-resurrect /opt/tmux-resurrect
echo "run-shell /opt/tmux-resurrect/resurrect.tmux" > ~/.tmux.conf && tmux source-file ~/.tmux.conf
