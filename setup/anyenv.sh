#!/bin/zsh +e

FILE="${HOME}/.zshenv"

if [ ! -e "${FILE}" ]; then
    echo '' > ${FILE}
fi

if [ ! -d "${HOME}/.anyenv" ]; then
    git clone https://github.com/riywo/anyenv ${HOME}/.anyenv
fi

grep 'eval "$(anyenv init -)"' ${FILE} > /dev/null
if [ $? -eq 1 ];then
    cat << \EOF >> ${FILE}
# ------------------------------------------------------------------------
# anyenv
# ------------------------------------------------------------------------
if [ -d "${HOME}/.anyenv" ]; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi
EOF
fi
