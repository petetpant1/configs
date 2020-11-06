set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Load plugins
" VIM enhancements
Plugin 'ciaranm/securemodelines'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'justinmk/vim-sneak'

" GUI enhancements
Plugin 'itchyny/lightline.vim'
Plugin 'machakann/vim-highlightedyank'
Plugin 'andymass/vim-matchup'
Plugin 'chriskempson/base16-vim'

" Fuzzy finder
Plugin 'airblade/vim-rooter'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

" Semantic language support
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" Syntactic language support
Plugin 'cespare/vim-toml'
Plugin 'stephpy/vim-yaml'
Plugin 'rust-lang/rust.vim'
Plugin 'rhysd/vim-clang-format'
"Plug 'fatih/vim-go'
Plugin 'dag/vim-fish'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'racer-rust/vim-racer'


call vundle#end()            " required
filetype plugin indent on

set hidden
let g:racer_cmd = "/home/petros/.cargo/bin/racer"
let g:racer_experimental_completer = 1


"Colors
set background=dark
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
syntax on
call Base16hi("Comment", g:base16_gui09, "", g:base16_cterm09, "", "", "")

"Coc related 
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction















