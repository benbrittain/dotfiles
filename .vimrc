execute pathogen#infect()
call pathogen#helptags()

syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

" Rainbow braces
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

if has("autocmd")
  au BufReadPost *.rkt,*.rktl set filetype=racket
  au filetype racket set lisp
  au filetype racket set autoindent
endif


set encoding=utf8

set number
set linebreak
set textwidth=100
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2
autocmd FileType make setlocal noexpandtab

set ruler
set undolevels=1000

set laststatus=2
nnoremap <CR> :noh<CR><CR>
set tags=./tags;/
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

au BufNewFile,BufRead *.elm set filetype=elm
