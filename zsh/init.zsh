eval "$(fasd --init auto)"

bindkey -v
export KEYTIMEOUT=1

bindkey -v
bindkey '^R' history-incremental-search-backward
