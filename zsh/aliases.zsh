# Aliases

function reload-aliases() {
  source ~/projects/rice/zsh/aliases.zsh
  echo "Reloaded aliases"
}

alias cd..="cd .." # only thing windows does right

# listing files
alias ls="exa --icons"
alias l="ls -lh"
alias ll="ls -lah"
alias la="ls -a"

alias less="less -I" # ignore case

alias todo="vim /home/kevqn/projects/todo" # very useful
alias tree="tree -I __pycache__"
alias py='python' # im lazy af

alias v="vim" # im lazy af

alias vim="nvim"
alias tmux="tmux -u"

alias gs="git status --short" # use it a lot
alias gl="git log --oneline -25" # short and sweet
alias gd="git diff --stat"
alias gds="git diff --stat --staged"

alias yayclean="yay -Sc" # deletes old packages

function cheatsheet() {
  if [ -z "$1" ]; then
    echo "Usage: cheatsheet <command>"
    return 1
  fi
  curl cht.sh/$1 | less -R
}
alias cheat="cheatsheet"
alias chtsh="cheatsheet"

# vim
alias vzsh="cd ~/projects/rice/zsh; v .zshrc"
alias valias="cd ~/projects/rice/zsh; v aliases.zsh"
alias vvim="cd ~/projects/rice/nvim; v ."
alias vvimrc="vvim"
alias vxmonad="cd ~/projects/rice/xmonad; v xmonad.hs"


# Programs
alias cgpa="python /home/kevqn/projects/cgpa-analysis/cgpa"
alias vim-plugins-profile="python /home/kevqn/projects/bin/vim-plugins-profile/vim-plugins-profile.py /usr/bin/nvim"

# Fizes
alias pip="noglob pip"

# Complex Aliases
sudo() { /usr/bin/sudo -E zsh -ic "$*" }

# java is stupid
alias java8="/usr/lib/jvm/java-8-openjdk/bin/java"
alias java17="/usr/lib/jvm/java-17-openjdk/bin/java"
alias java20="/usr/lib/jvm/java-20-openjdk/bin/java"

# webd shit
export react="127.0.0.1:3000"
