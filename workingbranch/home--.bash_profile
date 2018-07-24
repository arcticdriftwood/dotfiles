# .bash_profile
# Get the aliases and functions
export EDITOR=nvim
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
[ $TERM = 'linux' ] && setvtrgb ~/.config/.setvtrgb-colors
[ $TERM = 'linux' ] && setfont Tamsyn6x12r
