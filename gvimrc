if has("gui_macvim")
    macmenu &File.Print key=<nop>
    set guitablabel=%M%t
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
endif
