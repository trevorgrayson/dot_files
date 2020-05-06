slurp:
	cp ~/.vim* .
	cp ~/.zshrc* .
	cp ~/.bash* .
	cp ~/.profile .

install:
	git submodule init
	git submodule update
	cp -rf .vim* ~/
