.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep '^[a-zA-Z]' $(MAKEFILE_LIST) | \
	sort | \
	awk -F ':.*?## ' 'NF==2 {printf "\033[36m  %-25s\033[0m %s\n", $$1, $$2}'
	
.PHONY: install-py3.6
install-py3.6: ## Install Python3.6
	sudo add-apt-repository ppa:jonathonf/python-3.6
	sudo apt update
	sudo apt install python3.6 python3-pip
	sudo -H pip3 install --upgrade pip
	curl https://bootstrap.pypa.io/get-pip.py | sudo -H python3.6

.PHONY: add-venv
add-venv: ## Install virtualenv, create virtualenv, install requirements
	pip3.6 install virtualenv
	virtualenv -p /usr/bin/python3.6 venv
	. ./venv/bin/activate
	#@echo installing requirements.txt ...
	venv/bin/pip3.6 install -q -r ./requirements.txt

# :%s/^[ ]\+/\t/g - automatically replace all tabs with spaces
