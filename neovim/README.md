# Neovim

## [Install Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

## Setup

[init.vim from vim-bootstrap with my customs](init.vim)

Paste this file into `./config/nvim/`

It has support for:
- Python
- Go
- JavaScript
- HTML

## Install the plugins

```sh
nvim +PlugInstall +qall
```

## Commands

- Autocomplete: `Ctrl + Space`
- Open a new tab: `Shift + t`
- Navigate to next tab: `Tab`
- Navigate to previows tab: `Shift + Tab`
- To list all buffers: `:ls`
- To jump to a buffer: `:b <number>`
- Toggle NerdTree: `F3`
- Toggle NerdTree with the current file selected: `F2`
- NerdTree navigate: 
  - Up: `k`, 
  - Down: `j`, 
  - Open file or dir: `o`
- Change focus between panels: 
  - left: `Ctrl + h` 
  - right: `Ctrl + l`
  - Up: `Ctrl + k`
  - Down: `Ctrl + j`
- Toggle Tree Navigator: `F4`
- Move line up: `Ctrl + k`
- Move multiple lines up: `Shift + v`, select up `k` or select down `j`, then `Ctrl + k`
- Move line down: `Ctrl + j`
- Move multiple lines down: `Shift + v`, select up `k` or select down `j`, then `Ctrl + j`

-------

## References

[Installing Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
[Vim Bootstrap](www.vim-bootstrap.com)
[Move lines up or down](http://vim.wikia.com/wiki/Moving_lines_up_or_down)
[Vim: Moving Lines Ain't Hard](https://dockyard.com/blog/2013/09/26/vim-moving-lines-aint-hard)