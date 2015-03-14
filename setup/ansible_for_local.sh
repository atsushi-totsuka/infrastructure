#!/bin/zsh

echo "localhost" >> ~/ansible_hosts

cat << EOF >> ~/.zshenv
# ------------------------------------------------------------------------
# ansible
# ------------------------------------------------------------------------
export ANSIBLE_HOSTS=~/ansible_hosts

EOF
