# Network Automation Python Environment

This repo is WIP...

## Docker
```
git clone https://github.com/rickdonato/network-automation-py-dev
docker build --tag network-automation-dev:standalone --file Dockerfile.standalone .
docker run --rm -it network-automation-dev:standalone
```

## VSCode
* `git clone https://github.com/rickdonato/network-automation-py-dev`
* Open `network-automation-py-dev` folder in VSCode.
* VSCode will detect `devcontainer.json` file and create container.
* Your dev envrionment will be ready using this container environment.
For full details around environment checkout `devcontainer.json`.

## Makefile
Various tasks can be run via the `Makefile`.

## Tools
The following tools are installed:
* Chromaterm - Colorize network output - `cat running-config.txt | ct`

## VSCode Extenstions
* alefragnani.bookmarks
* usernamehw.errorlens
* eamodio.gitlens
* oderwat.indent-rainbow
* rubymaniac.vscode-paste-and-indent
* ms-python.python
* visualstudioexptteam.vscodeintellicode


## To Do
poetery

* Shell - https://ohmyz.sh/

* pylint - Linter
* Black - code formatters
* vulture - find unused code.

* pylint

* saftey
* Bandit - Security Checker
