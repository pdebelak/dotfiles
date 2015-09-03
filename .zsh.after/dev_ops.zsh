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
