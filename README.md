# Env configuration

This is my custom shell configuration.

## Instructions

1. Install [oh my zsh](https://github.com/robbyrussell/oh-my-zsh#readme)
2. clone this repo
3. `./symlink.sh`
4. `./install_plugins.sh`

## Dependencies

This is not an exhaustive list (since I don't remember everything I've
    installed). Note: Remember to update this with everything you need to
install if you get a new computer!

1. [rvm](https://rvm.io/rvm/install) - for managing ruby
2. [yarn](https://yarnpkg.com/lang/en/docs/install/) - for javascript
2. [nvim](https://github.com/neovim/neovim) - not strictly needed but some
   mappings are for that
3. [ripgrep](https://github.com/BurntSushi/ripgrep) - used for searching if
   available
4. [fasd](https://github.com/clvv/fasd) - not necessarily needed, but I can't
   live without the `z` shortcut for fast fuzzy cding
5. python3 (brew install python3 && pip3 install neovim) - needed for
   [deoplete](https://github.com/Shougo/deoplete.nvim) autocomplete plugin
6. [fzf](https://github.com/junegunn/fzf) for fuzzy file searching in vim
   (similar to ctrlp)
