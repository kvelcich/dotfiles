# Dotfiles
This project automates the setup process for all of my dotfiles and 
configurations. 

![](screenshot.png)

## Installation

To install run the following command:
```sh
sh -c "`curl -fsSL https://raw.githubusercontent.com/kvelcich/dotfiles/master/install.sh`"
```

This will install the dotfiles, plugins, and configurations for:
  * [Vim](https://www.vim.org/)
  * [Z shell (zsh)](http://zsh.sourceforge.net/)
  * [Hyper](https://hyper.is/)

#### Manual Installation
All resources are found within their corresponding directories within this 
repository as well as an installation script. 

Be aware that some installation scripts expect the operating system as the
first argument, so be sure to add the appropriate OS as a command line 
argument, i.e. `$ ./install.sh arch-wsl`.

### Supported Operating Systems

As far as I'm aware this should work for Linux, macOS, and Windows Subsystem for Linux (WSL). 

As the configurations grow and automation becomes more complex, the 
compatability may become less stable. Currently this has been tested on the 
following systems:
  * [Arch WSL](https://github.com/yuk7/ArchWSL)
  * [macOS Mojave](https://www.apple.com/macos/mojave/)

