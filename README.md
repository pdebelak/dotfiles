# Env configuration

This is my custom shell configuration.

## Instructions

1. clone this repo
2. `./symlink.sh`
3. `./install_plugins.sh`

## Dependencies

This is not an exhaustive list (since I don't remember everything I've
installed). Note: Remember to update this with everything you need to
install if you get a new computer!

1. [rbenv](https://github.com/rbenv/rbenv#installation) - for managing ruby
2. [yarn](https://yarnpkg.com/lang/en/docs/install/) - for javascript. You
	 can name this `yarnpkg` so it doesn't conflict with the hadoop yarn and
	 things should work as expected.
3. [nvim](https://github.com/neovim/neovim) - not strictly needed but some
   mappings are for that
4. [ripgrep](https://github.com/BurntSushi/ripgrep) - used for searching if
   available
5. [fasd](https://github.com/clvv/fasd) - not necessarily needed, but I can't
   live without the `z` shortcut for fast fuzzy cding
6. python3 (brew install python3 && pip3 install neovim) - needed for
   [deoplete](https://github.com/Shougo/deoplete.nvim) autocomplete plugin
7. [fzf](https://github.com/junegunn/fzf) for fuzzy file searching in vim
   (similar to ctrlp)
8. flake8 (pip3 install flake8) - used in python files for linting
