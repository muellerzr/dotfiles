alias sudo="sudo "

# Conda shortcuts
alias ceu="conda env update"
alias cls="conda env list"
alias ci="conda install"
alias cr="conda remove"
alias cnew="conda create -n"
alias ca="conda activate "

# Git shortcuts
alias gbls="git branch"
alias gcom="git commit -am "
alias gsw="git switch -c "
alias gs="git status"
alias gpull="git pull"
alias gpush="git push"
alias ga="git add ."

# Code quality
alias wipe="find . -name ".ipynb_checkpoints" -exec rm -r "{}" \;"
alias clean="make style; make quality"

# HuggingFace Specific
# list all no_trainer scripts from inside examples/pytorch
alias ls_no_trainer="find . -name "*no_trainer*" -type f -printf '%y %p\n\0' | sort -z"

# NVIDIA SMI
alias nmi="nvidia-smi"

# Docker
alias dkill="docker kill"
alias dp="docker pull"
alias dr="docker run"
alias dd="docker container rm"
alias ds="docker start"

# Python3 -> python
alias python="python3"
alias py="python"

# Custom Docker images
alias nbdev="-v $(pwd):/home/runner/local/$(basename $(pwd)) -p 8888:8888 fastdotai/nbdev"
alias fastai="-v $(pwd):/workspace/local/$(basename $(pwd)) -p 8887:8887 --gpus all fastdotai/fastai ./run_jupyter.sh"
alias jupyt="--name jupyter -v $(pwd):/home/jovyan/local/$(basename $(pwd)) -p 8884:8884 -e GRANT_SUDO=yes --user root -e NB_GID=100 -e GRANT_SUDO=yes jupyt:latest start.sh jupyter lab --port 8884"
alias hfhub="--name hfhub -v $(pwd):/home/jovyan/local/$(basename $(pwd)) -p 8885:8885 -e GRANT_SUDO=yes --user root -e NB_GID=100 -e GRANT_SUDO=yes huggingface-hub start.sh jupyter lab --port 8885"
alias accel="--name accelerate --shm-size=24G -v $(pwd):/home/jovyan/local/$(basename $(pwd)) -p 8886:8886 -e GRANT_SUDO=yes --user root -e NB_GID=100 -e GRANT_SUDO=yes --gpus all jupyter-extensions start.sh jupyter lab --port 8886"

complete -F _complete_alias "${!BASH_ALIASES[@]}"