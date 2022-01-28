# A .zprofile for macOS.

typeset -U PATH path
path=("$HOME/anaconda3/bin" "$path[@]" "$HOME/bin")
export PATH
