" Remap shortcut to get out of insert mode 
:imap ;; <esc>

" Indentation
syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Make vim using system clipboard
set clipboard=unnamedplus

" Use grip for markdown preview
let vim_markdown_preview_github=1
let vim_markdown_preview_toogle=3
let vim_markdown_preview_browser='firefox-esr'

" vim-plug config 
" ---------------

call plug#begin('~/.vim/plugged')
" Markdown viewer 
Plug 'JamshedVesuna/vim-markdown-preview'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
