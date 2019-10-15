#!/bin/bash

sudo ln -sf /usr/bin/python3 /usr/local/bin/python3

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python3 get-pip.py --user

rm get-pip.py

pip install virtualenvwrapper --user
