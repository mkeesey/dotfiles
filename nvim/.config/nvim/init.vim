set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

tnoremap <Esc> <C-\><C-n> " escape works in terminal
set shell=/usr/bin/zsh
