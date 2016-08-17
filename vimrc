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

" Ultisnips
Plugin 'SirVer/ultisnips'
" More snippets
Plugin  'honza/vim-snippets'

"PHP
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'lumiliet/vim-twig'
Plugin 'tobyS/pdv'

"Search and replace
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

Plugin 'scrooloose/syntastic'
" For rust lang
Plugin 'rust-lang/rust.vim'
" For golang
Plugin 'fatih/vim-go'
" For es6
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
" For html and html5
Plugin 'othree/html5.vim'
Plugin 'alvan/vim-closetag'

" Configuration files syntax
Plugin 'cespare/vim-toml'

" Easymotion!!
Plugin 'easymotion/vim-easymotion'

" EasyTags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" React
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

"===General===
let mapleader=","
set nu
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
set foldcolumn=0
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
autocmd FileType js,vue,html,json,md,css,h,c,cc setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
" Syntax support
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.vue set filetype=html

"===Encoding===
set encoding=utf8
set fileencoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"===GUI===
set guifont=DejaVu_Sans_Mono:h19
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

"===Interface===
syntax on
set background=dark
let base16colorspace=256
colorscheme base16-ocean
" set transparency=5

" Highlight current line
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

"===MacVim===
highlight LineNr ctermbg=NONE
if has("gui_running")
    set macligatures
    highlight LineNr guibg=NONE
endif

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
" let g:netrw_liststyle=3
let g:netrw_winsize=30
let g:netrw_hide=1
let g:netrw_list_hide='.*\.DS_Store,.*\.git,.*\.src,.*\.tags,.*\.o,.*\.deps,.*\.dirstamp'


"===Ultisnips===
let g:UltiSnipsExpandTrigger="<D-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

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

"===rust===
" Install rustfmt by `cargo install rustfmt`
let g:rustfmt_autosave = 1
let g:ycm_rust_src_path = "~/Source/rust"

"===go===
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <leader>gi <Plug>(go-imports)
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

"===EasyTags===
let g:easytags_dynamic_files = 1
let g:easytags_async = 1
let g:easytags_syntax_keyword = 'always'
let g:easytags_always_enabled = 1
let g:easytags_suppress_ctags_warning = 1

"===YouCompleteMe===
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"===vim-jsx===
let g:jsx_ext_required = 0

"===PHP===
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
autocmd BufRead,BufNewFile *.php nnoremap <buffer> <Leader>c :call pdv#DocumentCurrentLine()<CR>

"===Useful functions===

" BuildCTags
function! BuildCTags()
    if(executable("ctags"))
        silent! execute "!rm -f .src .tags"
        silent! execute "!find . -name '*.php' -o -name '*.c' -o -name '*.h' > .src"
        execute "!ctags -L .src -f .tags --totals"
        set tags=.tags,~/.vimtags
    endif
endf
nmap ,0  :call BuildCTags()<cr>

" Clang-Format
function! ClangFormat()
    if (executable("clang-format"))
        let s:current_file = @%
        let command = "!clang-format -style=file -i " . s:current_file
        exec command
    endif
endf
nmap ,cf :call ClangFormat()<cr>

" PHP cs fixer
function! PhpCsFixer()
    let s:current_file = @%
    let command = "!php-cs-fixer fix " . s:current_file . " --config-file=$HOME/.php_cs"
    exec command
endfunction
nmap ,pf :call PhpCsFixer()<cr>

" js-beautify
function! JsBeautify()
    let s:current_file = @%
    let command = "!js-beautify " . s:current_file . " -r"
    exec command
endfunction
nmap ,jf :call JsBeautify()<cr>

" html-beautify
function! HtmlBeautify()
    let s:current_file = @%
    let command = "!html-beautify " . s:current_file . " -r"
    exec command
endfunction
nmap ,hf :call HtmlBeautify()<cr>

" go fmt
function! GoFmt()
    let s:current_file = @%
    let command = "!gofmt -w " . s:current_file
    exec command
endfunction
nmap ,fg :call GoFmt()<cr>
nmap ,lg :call GoLint()<cr>

" Move a line of text using Comamnd+[jk]
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z
