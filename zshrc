source ~/.zsh/oh-my-zsh
if [ -f "$HOME/.rvm/scripts/rvm" ]; then
  source $HOME/.rvm/scripts/rvm
fi
if [ -f "/usr/share/rvm/scripts/rvm" ]; then
  source /usr/share/rvm/scripts/rvm
fi
if yarn global bin > /dev/null 2>&1; then
  export PATH=$(yarn global bin):$PATH
fi
export PATH=bin/node_modules:$PATH
for config_file ($HOME/.zsh/*.zsh) source $config_file

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH=node_modules/.bin:$PATH

echo "        __      __
.-----.|  |_.--|  |
|  _  ||   _|  _  |
|   __||____|_____|
|__|"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
