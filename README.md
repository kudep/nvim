# nvim

## Getted starting

```
git clone git@github.com:kudep/nvim.git ~/.config/nvim
```
## Requirements

```
sudo dnf install gcc-c++ ripgrep fd-find
```

### Requirements for nvim-web-devicons
```
# ubuntu based linux distribution
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/UbuntuMono.zip
sudo apt install unzip
sudo mkdir -p /usr/local/share/fonts/nerd_ubuntu_mono/
sudo unzip UbuntuMono.zip -d /usr/local/share/fonts/nerd_ubuntu_mono/
```

### Requirements for Telescope
```
# ubuntu based linux distribution
sudo apt install ripgrep fd-find

```

### Requirements for Treesitter 
```
# ubuntu based linux distribution
sudo apt install build-essential
```

## Clipboard

  - |g:clipboard|
  - pbcopy, pbpaste (macOS)
  - wl-copy, wl-paste (if $WAYLAND_DISPLAY is set)
  - xclip (if $DISPLAY is set)
  - xsel (if $DISPLAY is set)
  - lemonade (for SSH) https://github.com/pocke/lemonade
  - doitclient (for SSH) http://www.chiark.greenend.org.uk/~sgtatham/doit/
  - win32yank (Windows)
  - termux (via termux-clipboard-set, termux-clipboard-set)
  - tmux (if $TMUX is set)
