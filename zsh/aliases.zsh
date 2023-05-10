# Aliases

alias ls="exa --icons"
alias l="ls -lh"
alias ll="ls -lah"
alias less="less -I" # ignore case

alias todo="vim /home/kevqn/projects/todo" # very useful
alias tree="tree -I __pycache__"
alias py='python' # im lazy af

alias v="vim" # im lazy af

alias vim="nvim"
alias tmux="tmux -u"

alias gs="git status --short" # use it a lot
alias gl="git log --oneline -25" # short and sweet

alias yayclean="yay -Sc" # deletes old packages


# Programs
alias cgpa="python /home/kevqn/projects/cgpa-analysis/cgpa"
alias vim-plugins-profile="python /home/kevqn/projects/bin/vim-plugins-profile/vim-plugins-profile.py /usr/bin/nvim"

# Fizes
alias pip="noglob pip"

# Complex Aliases
sudo() { /usr/bin/sudo -E zsh -ic "$*" }
