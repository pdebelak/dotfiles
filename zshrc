source ~/.zsh/oh-my-zsh
source $HOME/.rvm/scripts/rvm
export PATH=bin/node_modules:$PATH
for config_file ($HOME/.zsh/*.zsh) source $config_file

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/pdebelak/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=node_modules/.bin:$PATH

echo "        __      __
.-----.|  |_.--|  |
|  _  ||   _|  _  |
|   __||____|_____|
|__|"
