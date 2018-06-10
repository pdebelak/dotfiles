export CHEF_USER=pdebelak
export PATH=$PATH:$HOME/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export FZF_DEFAULT_COMMAND='rg --files --ignore-file=~/.agignore --follow --glob ""'
export HISTCONTROL=ignoreboth:erasedups
export EDITOR='vim'
if type nvim > /dev/null 2>&1; then
  export EDITOR='nvim'
fi
if type rustup > /dev/null 2>&1; then
  export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
fi
