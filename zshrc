# A .zshrc file for macOS.

PS1="[%168F%n@terminus%f: %11F%1~%f]%# "

if [ -f ~/.alias ]; then
   source ~/.alias
fi

# Enable git completion.
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit
compinit
