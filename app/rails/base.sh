#!/bin/bash

bundle exec rails g scaffold mst/code name:string:index value:string
bundle exec rails g bootstrap:themed mst/codes -f

sed -i "s/Code/Mst::Code/g" app/views/mst/codes/*
sed -i "s/@code/@mst_code/g" app/views/mst/codes/*
