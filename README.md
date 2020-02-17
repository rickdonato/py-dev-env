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

## Makefile
Various tasks can be run via the `Makefile`, such as: 
```
$ make
  add-venv-py2.7            Install virtualenv, create virtualenv, install requirements
  add-venv-py3.6            Install virtualenv, create virtualenv, install requirements
  add-venv-py3.8            Install virtualenv, create virtualenv, install requirements
  black-check               Perform Black formatting against py files. Check ONLY.
  black-diff                Perform formatting against py files. Diff ONLY.
  black                     Perform formatting against py files.
  build                     build docker container.
  lint-ansible              Perform linting against ansible yaml files
  lint-py                   Perform linting against py files
  remove-yml-eol-spaces     Remove end of line spaces from yaml files
  run                       run docker container
  update                    Update pip requirements.txt
```
