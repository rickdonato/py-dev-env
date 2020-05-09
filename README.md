# Network Automation Python Environment

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

## To Do
Shell - https://ohmyz.sh/
Flake8 - Linter
Black - code formatters
Bandit - Security Checker
vulture - find unused code.
