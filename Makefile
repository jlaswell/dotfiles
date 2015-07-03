install_oh_my_zsh:
	echo "Setting up oh-my-zsh"
	@sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - )"
	@cp -R oh_my_zsh ~/.oh_my_zsh
	@chsh -s /bin/zsh
	@cp zshrc ~/.zshrc

better: install_oh_my_zsh
