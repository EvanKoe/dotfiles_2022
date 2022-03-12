# dotfiles_2022
These are the dotfiles for glassy (fluent) i3 gaps. If you are looking for KDE/i3-gaps MacOS dotfiles, go for "dotfiles_2021" repo

# Purpose
This is a small configuration for i3-gaps with picom (compositor), alacritty (terminal emulator), and vim (text editor).

![this config screenshot](https://github.com/EvanKoe/dotfiles_2022/blob/main/Screenshots/screen.png)

Picom adds blur, small fading animations (really quickly, I don't like long animations, I am speed) and rounded corners.  
I chose Alacritty because it has built-in background transparency that is supported in Picom (Konsole didn't)  
Also my i3 config is a bit messy, because I installed it yesterday, and I didn't really have the time to organize it.  

# Installation
To install this config, I made an installation script which copies those config files into your $HOME/.config folder. But before, you'll need dependencies (most of them are used in picom, and in the picom readme, it is noted that those dependencies aim at Debian systems, so do not worry if they don't install correctly) :
```
i3-gaps vim alacritty libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev
```
To install picom, I use [this picom fork](https://github.com/ibhagwan/picom.git)

To copy the config files in your $HOME/.config, just run `install.sh` (you may need to chmod it before)

# Gallery

![Yep, Discord is indeed blurred !](https://github.com/EvanKoe/dotfiles_2022/blob/main/Screenshots/discord.png)
![And VS Code is blurred too !](https://github.com/EvanKoe/dotfiles_2022/blob/main/Screenshots/vscode.png)
![Let me introduce BTOP, an more informative alternative to HTOP](https://github.com/EvanKoe/dotfiles_2022/blob/main/Screenshots/btop.png)

# Thanks
I wanted to thank the *nixporn community on Reddit and Discord for them liking my rice and being so nice. Do not hesitate to contact me if you have a problem with anything related to the installation of these dots or not ! 
