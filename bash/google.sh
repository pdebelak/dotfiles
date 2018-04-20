google () {
  search=`ruby -e "require 'cgi';puts CGI::escape('$*')"`
  open /Applications/Google\ Chrome.app/ "https://www.google.com/#q=$search"
}

alias goog='google'
