# A .zshrc file for macOS.

if [ -f ~/.alias ]; then
   source ~/.alias
fi

# Enable git completion.
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit
compinit

if [ -f ~/.zprompts ]; then
   source ~/.zprompts
   prompt kalmia
fi
