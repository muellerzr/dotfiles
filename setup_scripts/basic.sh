#!/bin/bash
# Setup miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-py39_4.12.0-Linux-x86_64.sh
chmod +x Miniconda3-py39_4.12.0-Linux-x86_64.sh
./Miniconda3-py39_4.12.0-Linux-x86_64.sh

# Activate base env and install autocomplete
source activate
conda install -c conda-forge conda-bash-completion -y

# Then run normal setup
wget https://github.com/muellerzr/dotfiles/blob/master/setup.sh
chmod +x setup.sh
./setup.sh