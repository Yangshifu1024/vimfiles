# vimfiles
My vimfiles

- `brew install macvim --with-lua --with-override-system-vim`
- `brew install the_silver_searcher universal-ctags`
- `make install`

> Consider to install [base16-shell](https://github.com/chriskempson/base16-shell) for better scene when use vim in terminals with [base16](https://github.com/chriskempson/base16) color schemas.
> ~/.vim/bundle/vim-easytags/autoload/xolox
    ❯ git diff
    diff --git a/autoload/xolox/easytags.vim b/autoload/xolox/easytags.vim
    index d0dec21..d7884a9 100644
    --- a/autoload/xolox/easytags.vim
    +++ b/autoload/xolox/easytags.vim
    @@ -81,7 +81,7 @@ function! xolox#easytags#check_ctags_compatible(name, min_version) " {{{2
         let pattern = '\(Exuberant\|Universal\) Ctags \zs\(\d\+\(\.\d\+\)*\|Development\)'
         let g:easytags_ctags_version = matchstr(get(result['stdout'], 0, ''), pattern)
         " Deal with development builds.
    -    if g:easytags_ctags_version == 'Development'
    +    if g:easytags_ctags_version == 'Development' || g:easytags_ctags_version == '0.0.0'
           call xolox#misc#msg#debug("easytags.vim %s: Assuming development build is compatible ..", g:xolox#easytags#version, a:name)
           return 1
         endif
