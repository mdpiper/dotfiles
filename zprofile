# A .zprofile for macOS.

typeset -U PATH path
path=("$HOME/miniforge3/bin" "$path[@]" "$HOME/bin")
export PATH
