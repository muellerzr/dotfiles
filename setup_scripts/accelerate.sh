#!/bin/bash
# Initial setup
wget https://raw.githubusercontent.com/muellerzr/dotfiles/master/setup_scripts/basic.sh
chmod +x basic.sh
./basic.sh

# Create conda env
source ~/.bash_aliases
source activate

# Install Accelerate
cnew accelerate python=3.9
ca accelerate
git clone https://github.com/huggingface/accelerate
cd accelerate; pip install -e .[dev]