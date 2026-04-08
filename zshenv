# A .zshenv file for Linux and macOS

typeset -U PATH path
path=("$HOME/miniforge3/bin" "$path[@]" "$HOME/.local/bin" "$HOME/bin")
export PATH
