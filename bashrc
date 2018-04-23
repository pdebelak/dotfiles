if yarn global bin > /dev/null 2>&1; then
  export PATH=$(yarn global bin):$PATH
elif yarnpkg global bin > /dev/null 2>&1; then
  export PATH=$(yarnpkg global bin):$PATH
fi
for config_file in $HOME/.bash/*.sh; do
  source $config_file
done

export PATH=node_modules/.bin:$PATH

function parse_git_dirty {
  [[ $(git status --short 2> /dev/null) != "" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/‹\1$(parse_git_dirty)› /"
}
export PS1='\[\e[0;32m\]\w\[\033[0m\] \[\e[0;33m\]$(parse_git_branch)\[\e[1;30m\]»\[\e[0;30m\] '

if type rbenv > /dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

if [ -f ~/.zprofile ]; then
  source ~/.zprofile
fi

echo "        __      __
.-----.|  |_.--|  |
|  _  ||   _|  _  |
|   __||____|_____|
|__|"
