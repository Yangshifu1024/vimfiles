.PHONY: init install uninstall

init:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

install: init
	ln -s -f `pwd`/vimrc ~/.vimrc
	ln -s -f `pwd`/gvimrc ~/.gvimrc
	@mkdir -p ~/.vim/backup
	@mkdir -p ~/.vim/swap
	mvim +PluginInstall
	@echo "Installation complete."
	@echo "Correct the absolute path of rust source in ~/.vimrc file as g:ycm_rust_src_path."

uninstall:
	rm -f ~/.vimrc ~/.gvimrc
	rm -rf ~/.vim
	@echo "Uninstall successful."

