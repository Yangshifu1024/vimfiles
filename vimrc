"===Vundle===
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Vim plugin Library
Plugin 'rizzatti/funcoo.vim'

" Smart input
Plugin 'kana/vim-smartinput'

" Base16 color schemas
Plugin 'chriskempson/base16-vim'

" Powerful comment functions
Plugin 'scrooloose/nerdcommenter'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'ctrlpvim/ctrlp.vim'
" Function navigator
Plugin 'tacahiroy/ctrlp-funky'
" Switcher for ctrl-p
Plugin 'ivan-cukic/vim-ctrlp-switcher'

" Editor config
Plugin 'editorconfig/editorconfig-vim'

" Airline and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-scripts/PreserveNoEOL'
Plugin 'ervandew/supertab'
Plugin 'bkad/CamelCaseMotion'
Plugin 'tpope/vim-surround'
Plugin 'danro/rename.vim'
Plugin 'schickling/vim-bufonly'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

"Git
Plugin 'vim-scripts/fugitive.vim'
Plugin 'airblade/vim-gitgutter'

" Buffers surfing
Plugin 'ton/vim-bufsurf'

"Neo complete
Plugin 'Shougo/neocomplete'

" Neo snippets
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
" More snippets
Plugin  'honza/vim-snippets'

"PHP
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'

"Search and replace
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

Plugin 'scrooloose/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'fatih/vim-go'

" Configuration files syntax
Plugin 'cespare/vim-toml'

" Easymotion!!
Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on

"===General===
let mapleader=","
set viminfo='1000,n$HOME/.vim/viminfo
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set visualbell
set noerrorbells
set history=1000
set nofoldenable
set foldmethod=marker
set confirm
set t_Co=256
set mouse=a
set report=0
set incsearch
set ignorecase
set smartcase
" Hide line number and fake a custom left padding area with 2 width
set nonumber
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg

set showmatch
set showcmd
set title
set laststatus=2
set matchtime=2
set matchpairs+=<:>
set hidden

set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"===FileType===
" Special filetype tabstop
autocmd FileType * setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType js,vue,html,json,md,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
" Syntax support
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.vue set filetype=html

"===Encoding===
set encoding=utf8
set fileencoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"===GUI===
set guifont=Source_Code_Pro_Medium:h18
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set linespace=15
set showmode
set autoread
set autowriteall
set complete=.,w,b,u,i
set completeopt=longest,menuone
if has("gui_running")
    set macligatures
endif

"===Interface===
syntax on
set background=dark
let base16colorspace=256
colorscheme base16-ocean
set transparency=5

" Highlight current line
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

"===Mappings===
" Make it easy to edit the Vimrc file
nmap <Leader>ev :tabe ~/.vimrc<cr>
" New file at current path
nmap :ed :edit %:p:h/
" Cd to current file's path
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>
" Type j twice to exit insert mode
imap jj <esc>
" Easy window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>
" File explorer
nmap <leader>ee :Explore<cr>
" Save file with sudo
cmap w!! %!sudo tee > /dev/null %
" Quickly go forward or backward to buffer
" ton/vim-bufsurf
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>
nnoremap <F3> :bn<CR>
nnoremap <F4> :bp<CR>

" Some tips 
nnoremap <Up> :echomsg "use k !"<cr>
nnoremap <Down> :echomsg "use j !"<cr>
nnoremap <Left> :echomsg "use h !"<cr>
nnoremap <Right> :echomsg "use l !"<cr>

"===Plugins===

"====scrooloose/nerdcommenter====
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

"====terryma/vim-multiple-cursors====
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"====ctrlpvim/ctrlp.vim====
let g:ctrlp_map = '<d-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'"
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky', 'switcher']
let g:ctrlpswitcher_mode = 1
nmap <D-r> :CtrlPFunky<Cr>
nmap <Leader>hh :CtrlPSwitch<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"===editorconfig/editorconfig-vim===
let g:EditorConfig_verbose=0
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'

"===vim-airline/vim-airline===
let g:airline_powerline_fonts=0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_detect_modified=1
let g:airline_theme='murmur'

"===netrw===
let g:netrw_liststyle=3
let g:netrw_winsize=30
let g:netrw_hide=1
let g:netrw_list_hide='.DS_Store,.git,.src,.tags'

"===neo bundles===
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" Neosnippet key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


"===SupreTab===
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"===SearchAndReplace===
" Greplace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"===scrooloose/syntastic===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_loc_list_height = 3
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_html_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
    let g:syntastic_html_eslint_exec = local_eslint
endif
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
let g:syntastic_error_symbol = '🚫'
let g:syntastic_style_error_symbol = '💩'
let g:syntastic_warning_symbol = '🔶'
let g:syntastic_style_warning_symbol = '🔸'
