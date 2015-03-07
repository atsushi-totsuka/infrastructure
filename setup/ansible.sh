#!/bin/zsh +e

anyenv install pyenv
cd ${HOME}/.anyenv/envs/pyenv/plugins/python-build/../.. && git pull

VERSION=$(pyenv install --list | grep "^\s*2" | grep -v "dev" | tail -1 | tr -d ' ')
pyenv install ${VERSION}
pyenv local ${VERSION}
pip install ansible

