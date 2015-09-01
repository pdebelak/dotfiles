# Shell Aliases

# use <C-s> in vim
alias vim="stty stop '' -ixoff ; vim"

# minitest aliases
alias minitest='ruby -Ilib:test'
alias mt='minitest'

# tmux aliases
alias tm='tmux'
alias tmn='tm new -s'
alias tma='tm attach -t'
alias tms='tm switch -t'
alias tmls='tm list-sessions'

# google it!
goog () {
  args=$*
  search=`ruby -e "require 'cgi';puts CGI::escape('$args')"`
  open /Applications/Google\ Chrome.app/ "https://www.google.com/#q=$search"
}

# DevOps
name_to_ip () {
  ip=`knife search node name:$1 | awk '/IP/{print $2;}'`
}
ressh () {
  name_to_ip $1
  echo "Ssh'ing to $ip"
  /usr/bin/ssh reverb@$ip
}
rescp () {
  name_to_ip $1
  noglob scp reverb@$ip:$2 $3
}}}}
