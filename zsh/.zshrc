# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY

alias zshconfig="kate ~/.zshrc"
alias quarium="asciiquarium"
alias rickroll="curl ascii.live/rick"
alias dvd="curl ascii.live/dvd"
alias nyancat="curl ascii.live/nyan"
alias earth="curl ascii.live/earth"
alias maxwell="curl ascii.live/maxwell"
alias full-update="sudo pacman -Syu && paru && sudo flatpak update"
alias clean-up="sudo pacman -Scc && yay -Scc && flatpak remove --unused"
alias unicode="kitty +kitten unicode_input"
alias pretty="bat -l conf -p"
alias whoareyou="cat /etc/hostname"
alias vim="nvim"
alias nano="nvim"
alias today='date "+%A, %d, %B, %H:%M:%S"'
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey '^[[3~' delete-char #sometime it will happen, trust

if [[ -o interactive ]]; then
  fastfetch
fi

eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/aricol_desn.json)"
