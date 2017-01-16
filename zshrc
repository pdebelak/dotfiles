source ~/.zsh/oh-my-zsh
source $HOME/.rvm/scripts/rvm
export PATH=bin/node_modules:$PATH
for config_file ($HOME/.zsh/*.zsh) source $config_file

export NVM_DIR="/Users/pdebelak/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
