#!/bin/zsh

# Setup prezto
# Clone repository
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# Configure zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Set zsh as default shell
chsh -s /bin/zsh

# Copy over prompt files
cp $PWD/prompt_simha_setup "${ZDOTDIR:-$HOME}"/.zprezto/modules/prompt/

# Copy rc files
cp $PWD/.zshrc $HOME/.zshrc
cp $PWD/.zpreztorc $HOME/.zpreztorc

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Set up vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp $PWD/.vimrc $HOME/.vimrc
mkdir $HOME/.vim/colors
cp $PWD/monokain.vim $HOME/.vim/colors/monokain.vim
vim +BundleInstall +qall

exit
