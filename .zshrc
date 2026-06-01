eval $(/opt/homebrew/bin/brew shellenv)
source $HOME/.aliases

# theme
zsh_theme=agnoster

# history
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# plugins
plugins=( 
    zsh-autosuggestions
)

# zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# custom functions
gdiff() {
  [[ $# -lt 2 ]] && echo "Usage: gdiff <base> <compare>" && return 1
  echo "ADDED";   git log --oneline "$1..$2" | sed 's/^/> /'
  echo "REMOVED"; git log --oneline "$2..$1" | sed 's/^/< /'
}
