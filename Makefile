.PHONY: all
all: print_usage

.PHONY: print_usage
print_usage:
	@echo "Hello"

.PHONY: commit
commit:
	@git add --all
	@git commit -a

.PHONY: push
push:
	@git push

.PHONY: install
install:
	@ln -sfv $(PWD)/.bashrc $(HOME)/.bashrc
	@ln -sfv $(PWD)/.vimrc $(HOME)/.vimrc
	@ln -sfv $(PWD)/.gitconfig $(HOME)/.gitconfig

