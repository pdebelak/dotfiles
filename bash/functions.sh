google () {
  search=`ruby -e "require 'cgi';puts CGI::escape('$*')"`
  open /Applications/Google\ Chrome.app/ "https://www.google.com/#q=$search"
}

alias goog='google'

venv () {
  venv_loc=${1:-venv}
  if [ -d "$venv_loc" ]; then
    source $venv_loc/bin/activate
  else
    echo "No directory $venv_loc found"
  fi
}
