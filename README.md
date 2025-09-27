# Martin's Dotfiles

## Themes
Current this setup is working around using Catppuccin Mocha everywhere you can.

## Systems
- Mac Studio M4
- Macbook Pro M1 
- Asus Zenbook - Arch
- Custom Nvidia Desktop - Arch

### Mac Setup
This config is built around ghostty as a terminal and aerospace as window manager.

#### Step by step
**1. Install homebrew**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**2. Install essentials**
```bash
brew install git gh stow
```

**3. Clone this repo**
```bash
git clone https://github.com/MartinEllegard/dotfiles.git
```

**4. Make sure you have the base folders in place**
```bash
mkdir -p ~/git ~/.config ~/.local/share ~/.local/bin 
```

**5. Stow the config files you want**
```bash
cd dotfiles && stow .
```

**6. Install the rest of the apps you want using homebrew or download them manually**
```bash
brew install fish ghostty tmux neovim btop lazygit unzip ripgrep bat exa fzf fd lazygit lazydocker tree-sitter-cli gcc uv zen orbstack aerospace
```

### Arch Systems
Here the config uses foot terminal and hyprland for window management


