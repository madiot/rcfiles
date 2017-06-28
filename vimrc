set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Vim wiki plugin
Plugin 'vimwiki' "put this one first as its <C-space> conflict with other autocomplete ones
" customisation of vimwiki from http://abratukhin.blogspot.fr/2015/02/personal-organizer-with-vimwiki.html
let g:vimwiki_list=[{'path':'$HOME/Documents/vimwiki'}]
let g:vimwiki_dir_link='index'
let g:vimwiki_hl_headers=1
let g:vimwiki_hl_cb_checked=1

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tweekmonster/braceless.vim' " python folding
Plugin 'hynek/vim-python-pep8-indent' " nice auto-indent
Plugin 'davidhalter/jedi-vim' " autocompletion and doc completion (K)
Plugin 'scrooloose/syntastic' " static python analysis with pylint (on save)
Plugin 'ervandew/supertab' " use tab for completion
Plugin 'nvie/vim-flake8' " static python analysis with flake8 (hit F7 key)
Plugin 'scrooloose/nerdtree' " browse files tree
Plugin 'tpope/vim-fugitive' " git
Plugin 'vim-airline/vim-airline' " status bar (needs special fonts)
Plugin 'vim-airline/vim-airline-themes' " bubblegum theme for status bar
Plugin 'Lokaltog/vim-distinguished' " soft color scheme
Plugin 'tomasr/molokai' " another color scheme
Plugin 'csv.vim' " csv plugin from https://github.com/vim-scripts/csv.vim
Plugin 'tidy'
Plugin 'Gundo'
Plugin 'tbabej/taskwiki'
Plugin 'powerman/vim-plugin-AnsiEsc'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'Shougo/denite.nvim'
"
"" integration with Zealdocs
Plugin 'investigate.vim'
nnoremap gz :!zeal "<cword>"&<CR><CR>
"
"" sparql
Plugin 'sparql.vim'
"
"" R-syntax-highlighting
Plugin 'R-syntax-highlighting'
"
"" All of your Plugins must be added before the following line
call vundle#end()            " required

" All Plugins added before the following line
filetype plugin indent on    " required
autocmd FileType python BracelessEnable -indent

" airline : 
" add this to env : export TERM='xterm-256color'
" requires powerline fonts
let g:airline_powerline_fonts = 1
set laststatus=2
au VimEnter * exec 'AirlineTheme bubblegum'
" enable syntastic integration
let g:airline#extensions#syntastic#enabled = 1

set encoding=utf-8

let python_highlight_all=1
syntax on

colorscheme molokai
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set nu rnu
set clipboard=unnamed
set colorcolumn=79 " highlight column 79
set tabstop=4 shiftwidth=2 expandtab autoindent
set paste

let g:syntastic_c_include_dirs = ['/usr/include']

" pierre
set list lcs=trail:·,tab:»·
let mapleader=','

" always show status line
set laststatus=2
