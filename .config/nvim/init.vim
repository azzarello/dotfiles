call plug#begin("~/.vim/plugged")
  Plug 'arcticicestudio/nord-vim'

  " Latex support
  Plug 'lervag/vimtex'
  let g:tex_flavor='latex'
  let g:vimtex_view_method='zathura'
  let g:vimtex_quickfix_mode=0
  set conceallevel=1
  let g:tex_conceal='abdmg'
  let g:vimtex_compiler_latexmk = {
      \ 'build_dir' : 'output',
  \}

  " Pandoc Markdown support
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'

  " Snippets
  Plug 'SirVer/ultisnips'

  " Tree File View
  Plug 'scrooloose/nerdtree'
  let NERDTreeIgnore = ['\.pyc$', '\.class$', 'Test\.java']

  " Themes
  Plug 'mhartington/oceanic-next'
  Plug 'Rigellute/shades-of-purple.vim'
  Plug 'kaicataldo/material.vim'

  " Fuzzy Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " FZF key bindings
  nnoremap <C-f> :FZF<CR>
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-i': 'split',
    \ 'ctrl-v': 'vsplit' }

  " for writing, to toggle, type :Goyo
  Plug 'junegunn/goyo.vim'
  
  " Git support
  Plug 'tpope/vim-fugitive'
call plug#end()

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

set guifont=JetBrainsMono\ Nerd\ Font:h18

" Theme
syntax enable
colorscheme nord

" Automatically update on change
autocmd TextChanged,TextChangedI <buffer> silent update

" Style preferences
set tabstop=2 shiftwidth=2 expandtab number relativenumber

" Spell check
set spelllang=en_gb
" Automatically enable spell check in the given file types
autocmd FileType latex,tex,md,markdown setlocal spell
" Automatically compile markdown files
autocmd BufWritePost *.md silent execute "!pandoc % -o %:r.pdf"
command PandocPDF silent execute "!pandoc % -o %:r.pdf"
map <F6> :PandocPDF<CR>
" For opening markdown files in zathura
command Zathura execute "!zathura %:r.pdf"
map <F5> :Zathura<CR>
source ~/.vimrc
