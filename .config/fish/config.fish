set -l os (uname)

### PATH/EXPORT ###
# Clear Path too avoid fish slowing down
set -e fish_user_paths

# Set theme
# set --export THEME gruvbox
# set --export THEME catppuccin

# Java
# set --export JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# set --export ANDROID_HOME $HOME/Library/Android/sdk

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Dotnet Development
set --export ASPNETCORE_ENVIRONMENT Development
set --export ASPNETCORE_URLS "http://*:8080"

set --export GEM_HOME "$HOME/.gem"

# Disabled: theme_gruvbox prints OSC 10/11 (terminal fg/bg) sequences, which make tmux
# paint every pane with a solid background. Ghostty's own theme already provides Gruvbox.
theme_gruvbox dark medium

if test "$os" = Darwin
    # Java / Kotlin
    #
    set -gx DOTNET_TOOLS $HOME/.dotnet/tools
    set -gx JAVA_HOME "/opt/homebrew/opt/openjdk@17"
    # set -gx ANDROID_HOME /opt/homebrew/share/android-commandlinetools
    set -gx ANDROID_HOME $HOME/Library/Android/sdk
    set -gx CPPFLAGS -I$JAVA_HOME/include

    ### MacOS os specific environment
    #Clang deps path 
    set --export LIBRARY_PATH /opt/homebrew/opt/openssl@3/lib /opt/homebrew/lib $LIBRARY_PATH
    set --export DOTNET_ROOT /opt/homebrew/opt/dotnet/libexec
    set --export flutter_default_path $HOME/fvm/default
    set -U fish_user_paths /Users/martin/.local/bin /Users/martin/bin-scripts /Users/martin/.local.bin /Applications /opt/homebrew/bin /opt/homebrew/sbin /opt/homebrew/opt/libpq/bin /Users/martin/go/bin /Users/martin/.omnisharp/bin /Users/martin/.cargo/bin /Users/martin/.npm-global/bin /Users/martin/.gem/ruby/3.4.0/bin /Users/martin/.gem/bin
    set -U fish_user_paths $fish_user_paths $JAVA_HOME/bin $ANDROID_HOME/emulator $ANDROID_HOME/platform-tools $ANDROID_HOME/tools $ANDROID_HOME/tools/bin
    set -U fish_user_paths $fish_user_paths $flutter_default_path/bin
    set -U fish_user_paths $fish_user_paths $DOTNET_TOOLS
else if test "$os" = Linux
    ### Linux os specific environment
    set -U fish_user_paths $HOME/.local/bin $HOME/bin-scripts $HOME/.nix-profile/bin /nix/var/nix/profiles/default/bin $HOME/.cargo/bin $HOME/.cargo/bin $HOME/go/bin $HOME/.npm-global/bin $fish_user_paths
else
    # do things for other operating systems
end
### PATH END ###

### SET OPTIONS ###
# Check if env variable EZA_L_OPTIONS exists
if set -q EZA_L_OPTIONS
    # If it does, set the EZA_LL_OPTIONS variable
else
    # If it doesn't, setup eza
    emit fish-eza_install
end
# Supresses fish's intro message
set fish_greeting

#Set term color
set TERM xterm-256color

#Set default Editor
set EDITOR nvim

# Set manpager
set -x MANPAGER "nvim -c 'set ft=man'"
### SET OPTIONS END

set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"

### SET KEYBIND MODE ###
function fish_user_key_bindings
    #fish_default_key_bindings
    fish_vi_key_bindings
end
### SET KEYBIND MODE END ###

# fastfetch
#pfetch
zoxide init fish | source
starship init fish | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
