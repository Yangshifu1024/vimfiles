.PHONY: init install uninstall

init-vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim: init-vim
	ln -s -f `pwd`/vimrc ~/.vimrc
	ln -s -f `pwd`/gvimrc ~/.gvimrc
	@mkdir -p ~/.vim/backup
	@mkdir -p ~/.vim/swap
	@echo "Correct the absolute path of rust source in ~/.vimrc file as g:ycm_rust_src_path."

uninstall-vim:
	rm -f ~/.vimrc ~/.gvimrc
	rm -rf ~/.vim
	@echo "Uninstall successful."


init-nvim:
	mkdir -p ~/.config/nvim/bundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

nvim: init-nvim
	ln -s -f `pwd`/vimrc ~/.config/nvim/init.vim
	ln -s -f `pwd`/gvimrc ~/.config/nvim/ginit.vim
