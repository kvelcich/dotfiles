# Ensure zsh is installed
if [ ! -x "$(command -v zsh)" ]; then
	printf "zsh isn't installed" 1>&2
	exit 1
fi

# Copy vim resources
mkdir -p $HOME/.zsh
cp -a $(dirname $0)/.zsh/. $HOME/.zsh
cp $(dirname $0)/.zshrc $HOME/.

# Download pure prompt
rm -rf $HOME/.zsh/pure
printf "\nCloning pure prompt...\n"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
if [ ! $? -eq 0 ]; then
    printf "Error downloading pure prompt." 1>&2
    exit 1
fi

# Add WSL improvements if using Windows Subsystem for Linux
if grep -q wsl <<< $1; then
    cat $(dirname $0)/wsl.setup >> $HOME/.zshrc
fi

# Install antigen plugin manager for zsh 
printf "\nInstalling antigen plugin manager and plugins...\n"
curl -fLo $HOME/.zsh/antigen/antigen.zsh --create-dirs git.io/antigen
if [ ! $? -eq 0 ]; then
    printf "Error downloading antigen plugin manager." 1>&2
    exit 1
fi

exit 0
