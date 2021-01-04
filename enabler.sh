#! /bin/bash
########################################
## Sory's Dot Files Enabler/Installer ##
########################################


#Install brew
if [ -z "$(which brew)" ]; then echo "Installing brew...";
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
else echo "Skipping brew installation"; fi


#TODO: Add brew bin to path variable for Linux installation.


#Install nvim
if [ -z "$(which nvim)" ]; then echo "Installing nvim..."; 
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
else echo "Skipping nvim installation"; fi


# Install Plug
if [ -f $HOME/.local/share/nvim/site/autoload/plug.vim ]; then echo "Skipping Plug installation";
else echo "Ïnstalling Plug...";
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'; fi



# Install dependencies
if [ -z "$(which alacritty)" ]; then echo "Installing alacritty..."; brew install --cask alacritty; else echo "Skipping alacritty installation" ; fi #Terminal emulator
if [ -z "$(which fzf)" ]; then echo "Installing fzf..."; brew install fzf; else echo "Skipping fzf installation" ; fi # Fuzzy finder interactive filter tool
if [ -z "$(which fd)" ]; then echo "Installing fd..."; brew install fd; else echo "Skipping fd installation"; fi # Modern find command, used mainly to filter directories.
if [ -z "$(which bat)" ]; then echo "Installing bat..."; brew install bat; else echo "Skipping bat installation"; fi # Used by fzf to display previews with color.
#if [ -z "$(which ag)" ]; then echo "Installing ag..."; brew install the_silver_searcher;  else echo "Skipping ag installation"; fi
if [ -z "$(which rg)" ]; then echo "Installing rg..."; brew install ripgrep; else echo "Skipping rg installation"; fi # Ripgrep, faster replacement for grep. Used by fzf
if [ -z "$(which tmux)" ]; then echo "Installing tmux..."; brew install tmux; else echo "Skipping tmux installation"; fi # Terminal multiplexer
if [ -z "$(which node)" ]; then echo "Installing node..." ; brew install node; else echo "Skipping node installation"; fi # Dependency for vim-coc
if [ -z "$(which rlwrap)" ]; then echo "Installing rlwrap..." ; brew install rlwrap; else echo "Skipping rlwrap installation"; fi # This is for cht.sh shell mode



#Install configs
pushd ~/dotFiles

rm -rf ~/.vim
mkdir -p ~/.config; rm -rf ~/.config/nvim

ln -sf  `pwd`/.bash_profile        ~/.bash_profile 
ln -sf  `pwd`/.alacritty.yml       ~/.alacritty.yml
ln -sf  `pwd`/.tmux.conf           ~/.tmux.conf
ln -sf  `pwd`/.vimrc               ~/.vimrc
ln -sf  `pwd`/.vim                 ~/.vim
ln -sf  `pwd`/.config/nvim         ~/.config/nvim

popd

# Install Plugins
nvim -c PlugInstall -c CocInstall coc-sh coc-python coc-explorer -c qa


#Install cheat.sh shell utility tool
mkdir -p ~/bin/; curl https://cht.sh/:cht.sh > ~/bin/cht.sh ; chmod +x ~/bin/cht.sh
if [[ $PATH != *"`whoami`/bin"* ]]; then export PATH=~/bin:$PATH; else echo "cheat.sh is already installed"; fi

echo "Sory's dot files succesfully installed!"
