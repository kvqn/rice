export STARSHIP_CONFIG=$ZDOTDIR/starship.toml
eval "$(starship init zsh)"

# Plugins and Themes
# Plugin Manager : Antigen

source $ZDOTDIR/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle Tarrasch/zsh-autoenv
antigen bundle "MichaelAquilina/zsh-autoswitch-virtualenv"
antigen apply

# Aliases
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/ssh.zsh"
source "$ZDOTDIR/hidden.zsh"

eval "$(zoxide init zsh)"

# Environment Variables
export BROWSER=vivaldi-stable

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path
export PATH="/usr/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin/scripts-bin"
export GEM_HOME="$HOME/.local/share/gem/ruby/3.0.0"
export PATH="$PATH:$GEM_HOME/bin"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/bin"

export PATH="$PATH:$HOME/Apps/flutter/flutter/bin"
export CHROME_EXECUTABLE="chromium"
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/build-tools/34.0.0"


source /etc/profile

# fixes
export _JAVA_AWT_WM_NONREPARENTING=1    # this fixes misbehaving java apps

# ripgrep conf
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/ripgrep.conf"

# zsh autoenv options
export AUTOENV_FILE_ENTER=.enter.zsh
export AUTOENV_FILE_LEAVE=.leave.zsh
export AUTOENV_HANDLE_LEAVE=1

eval $(thefuck --alias)

