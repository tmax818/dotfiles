




""""""""""""""Settings""""""""""""""""""

set number
set hidden
set mouse=a
set cindent
set tabstop=4
set laststatus=2
set statusline=%f         " Path to the file
set statusline+=\ \       " Separator
set statusline+=Buffer:   " Label
set statusline+=%n        " buffer number
set statusline+=\ \       " Separator
set statusline+=FileType: " Label
set statusline+=%y        " Filetype of the file
set statusline+=%=        " Switch to the right side
set statusline+=Current:\ %2l\ Total:\ %2L
set statusline+=\ \       " Separator
set statusline+=%p 
set statusline+=%% 

"""""" Change Cap-lock to Escape"""""""

"maps escape to the caps lock key when you enter Vim.  
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

"returns normal functionality to caps lock when you quit.
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'


"this turns on syntax highlighting
syntax on

"""Closing Brackets"""""

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"""" Leader Mappings""""""""

let mapleader=","


nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel


map <leader>w <C-w> 
map <leader>ev :vsplit $MYVIMRC<cr>
map <leader>sv :source $MYVIMRC<cr>
