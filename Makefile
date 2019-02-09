.PHONY: all
all: print_usage

.PHONY: print_usage
print_usage:
	@echo "make install: Install env in current user home."

.PHONY: install
install:
	@ln -sfv $(PWD)/.bashrc $(HOME)/.bashrc
	@ln -sfv $(PWD)/.vimrc $(HOME)/.vimrc
	@ln -sfv $(PWD)/.gitconfig $(HOME)/.gitconfig

