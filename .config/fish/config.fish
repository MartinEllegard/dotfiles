# Clear Path too avoid fish slowing down
set -e fish_user_paths
#Set path
set -U fish_user_paths /Users/martin/.local/bin /Users/martin/.local.bin /Applications /opt/homebrew/bin /opt/homebrew/sbin /opt/homebrew/opt/libpq/bin /Users/martin/go/bin /Users/martin/.omnisharp/bin /Users/martin/.cargo/bin
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Supresses fish's intro message
set fish_greeting
#Set term color
set TERM xterm-256color
#Set default Editor
set EDITOR lvim


###set manpager
set -x MANPAGER "lvim -c 'set ft=man'"


###set keybinding mode
function fish_user_key_bindings
    #fish_default_key_bindings
    fish_vi_key_bindings
end
###

### ALIAS

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Update brew packages
alias brewup="brew update && brew upgrade"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias zz='zellij'
alias zwork='zellij --session work'
alias zhome='zellij --session personal'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# switch between shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /opt/homebrew/bin/fish && echo 'Now log out.'"

# Cloudflared open tunnels
alias mctunnel="cloudflared access tcp --hostname minecraft.clenchedgaming.com --url localhost:25565"
alias pgstunnel="cloudflared access tcp --hostname databases.clenchedgaming.com/pgs --url localhost:5434"

fastfetch
