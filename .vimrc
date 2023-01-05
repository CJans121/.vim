"#####Author: Crasun Jans#####"


"=====Compatibility
set nocompatible "Use VIM as Vi Improved (with all it's features). set compatible makes VIM VI compatible, which means VIM's features are reduced to work like the old editor VI
"#


"=====Source plugin and plugin settings files -- managed by Vundle
if filereadable(expand("~/.vim/.vimrc.plug"))
source ~/.vim/.vimrc.plug "Plugin calls are stored in this file
source ~/.vim/.vimrc.plug.customsettings "Custom settings for plugins are stored in this file
endif
"#


"=====Enable syntax highlighting including doxygen for C families
syntax enable
:let g:load_doxygen_syntax=1
"#


"=====Universal color scheme setting
set termguicolors "Show enhanced colors
set background=dark
" set background=light
" set t_Co=256 "Might need to explicity set 256 color support in some terminals
"#


"=====Colorscheme choices
colorscheme gruvatom "Custom made grubox scheme with atom-dark-256 scheme for vim-diff

" colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'hard' "Can make the gruvbox background extra dark

" colorscheme PaperColor
" hi cursorcolumn ctermbg=darkgray "Column and line background colors for PaperColor scheme
" hi cursorline ctermbg=darkgray

" colorscheme jellybeans
" colorscheme atom-dark-256
"#


"=====Autocompletion for brackets, xml tags, quotation marks, etc.
inoremap (c ()<Left>
inoremap [c []<Left>
inoremap {c {}<Left>
inoremap "c ""<Left>
inoremap 'c ''<Left>
inoremap <c <><Left>
"#


"=====Line number settings
:set nu "Set absolute numbers on by default

" Toggle relative numbers with \r
nnoremap <silent> \r :set rnu!<CR>
"#


"=====Automatically wrap text that extends beyond the screen length
set wrap
"#


"=====Autosave on write
" autocmd TextChanged,TextChangedI * silent write
"#


"=====Highlight current cursorline and column
set cursorline
set cursorcolumn
"#


"=====Autofold settings
augroup python_cpp_fold_group
    autocmd!
    au BufNewFile,BufRead *.py set foldmethod=indent
    au BufNewFile,BufRead *.cpp set foldmethod=syntax
    au FileType vim set foldmethod=marker | set foldmarker=\"=====,\"#
augroup END
hi Folded ctermbg=NONE


"Override the default `foldtext()` which returns this:
"   +---  2 lines: Fold heading-------------------------------
"to look like:
"   »··[2ℓ]··: Fold heading···································
"credits:  wincent/wincent

let s:middot='·'
let s:raquo='»'
let s:small_l='ℓ'

function! MyFoldText()
  let l:lines='[' . (v:foldend - v:foldstart + 1) . s:small_l . ']'
  let l:first=substitute(getline(v:foldstart), '\v *', '', '')
  let l:dashes=substitute(v:folddashes, '-', s:middot, 'g')
  return s:raquo . s:middot . s:middot . l:lines . l:dashes . ': ' . l:first
endfunction

set foldtext=MyFoldText()
"#


"=====Show options with tabcomplete in command mode
set wildmenu
"#


"======For VIM's native fuzzy search set this path as the top directory
set path+=/home/crasun
"#


"=====Disable continuation of comment sign to next line in insert mode
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"#


"=====Search settings
set hlsearch "Highlight searches

"Background and foreground colors of the matches
hi search ctermbg=DarkMagenta
hi search ctermfg=Grey

"remap ? so pressing ? clears previous highlights and enters search mode
nnoremap ? :nohlsearch<CR> <bar> ?

set ignorecase "Ignore capital letters during search.

set shortmess-=S "Show search statistics
"#


"=====Increase update time for quicker updates overall, for instance in ALE/YCM warning suggestions, and git-gutter
set updatetime=250
"#


"=====Mouse support
"Disable in all modes
set mouse=
"#
