# Ensure vim is installed
if [ ! -x "$(command -v vim)" ]; then
	echo "vim isn't installed" 1>&2
	exit 1
fi

# Copy vim resources
mkdir -p $HOME/.vim
cp -a "$(dirname $0)/.vim/." "$HOME/.vim"
cp "$(dirname $0)/.vimrc" "$HOME/."


# Install vim-plug plugin manager, and download plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ ! $? -eq 0 ]; then
	echo "Error downloading vim-plug plugin manager."
	exit 1
fi
vim +PlugInstall +qall > /dev/tty 
