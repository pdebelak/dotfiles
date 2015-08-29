# Shell Aliases

# minitest aliases
alias minitest='ruby -Ilib:test'
alias mt='minitest'

# tmux aliases
alias tm='tmux'
alias tmn='tm new -s'
alias tma='tm attach -t'
alias tms='tm switch -t'
alias tmls='tm list-sessions'

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
