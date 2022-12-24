set nocompatible              " use VIM as Vi Improved (with all it's features). set compatible makes VIM VI compatible, which means VIM's features are reduced to work like the old editor VI

"=====Source plugin and plugin settings files -- managed by Vundle
if filereadable(expand("~/.vim/.vimrc.plug"))
source ~/.vim/.vimrc.plug "Plugin calls are stored in this file
source ~/.vim/.vimrc.plug.customsettings "Custom settings for plugins are stored in this file
endif

"=====Enable syntax highlighting including doxygen for C families
syntax enable
:let g:load_doxygen_syntax=1

"=====Custom color scheme setting
set background=dark
"let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

"=====Autocompletion for brackets, xml tags, quotation marks, etc.
inoremap (c ()<Left>
inoremap [c []<Left>
inoremap {c {}<Left>
inoremap "c ""<Left>
inoremap 'c ''<Left>
inoremap <c <><Left>

"=====Setting relative line numbers on by default
:set nu

"=====Automatically wrap text that extends beyond the screen length
set wrap

"=====Autosave
"autocmd TextChanged,TextChangedI * silent write

"=====Highlight current cursorline
set cursorline
set cursorcolumn

"=====Autofolding code inside functions
"au BufNewFile,BufRead *.py\
"  set foldmethod=indent
" "set fillchars+=foldopen:▾,foldsep:│,foldclose:▸
"  hi Folded ctermbg=NONE
"nnoremap fo z<s-o>
"nnoremap fc z<s-c>

"====For options menu during tabcomplete
set wildmenu

"===To use find to look for files recursively down this path
"set path+=/home/crasun

"To disable continuation of comment sign to next line in insert mode
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"====To highlight searches
set hlsearch
"Background and foreground colors
hi search ctermbg=DarkMagenta
hi search ctermfg=Grey
"remap so pressing ? clears previous highlights and enters search mode
nnoremap ? :nohlsearch<CR> <bar> ?

" Ignore capital letters during search.
set ignorecase

"No wrapping of lines
set nowrap

"====To show search statistics
set shortmess-=S

"====Show absolute numbers with \n
nnoremap <silent> \r :set rnu!<CR>
