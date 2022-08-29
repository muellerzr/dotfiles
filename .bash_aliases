alias a=alias

# Conda shortcuts
a ceu="conda env update"
a cls="conda env list"
a ci="conda install"
a cr="conda remove"
a cnew="conda create -n"
a ca="conda activate"

# Git shortcuts
a gbls="git branch"
a gcom="git commit -am"
a gsw="git switch -c"
a gs="git status"
a gpull="git pull"
a gpush="git push"
a ga="git add ."

# Code quality
a wipe="find . -name ".ipynb_checkpoints" -exec rm -r "{}" \;"
a clean="make style; make quality"

# HuggingFace Specific
# list all no_trainer scripts from inside examples/pytorch
a ls_no_trainer="find . -name "*no_trainer*" -type f -printf '%y %p\n\0' | sort -z"

# NVIDIA SMI
a nmi="nvidia-smi"

# Docker
a dkill="docker kill"
a dp="docker pull"
a dr="docker run"
a dd="docker container rm"
a ds="docker start"

# Python3 -> python
a python="python3"
a py="python"

# Custom Docker images
a nbdev="-v $(pwd):/home/runner/local/$(basename $(pwd)) -p 8888:8888 fastdotai/nbdev"
a fastai="-v $(pwd):/workspace/local/$(basename $(pwd)) -p 8887:8887 --gpus all fastdotai/fastai ./run_jupyter.sh"
a jupyt="--name jupyter -v $(pwd):/home/jovyan/local/$(basename $(pwd)) -p 8884:8884 -e GRANT_SUDO=yes --user root -e NB_GID=100 -e GRANT_SUDO=yes jupyt:latest start.sh jupyter lab --port 8884"
a hfhub="--name hfhub -v $(pwd):/home/jovyan/local/$(basename $(pwd)) -p 8885:8885 -e GRANT_SUDO=yes --user root -e NB_GID=100 -e GRANT_SUDO=yes huggingface-hub start.sh jupyter lab --port 8885"
a accel="--name accelerate --shm-size=24G -v $(pwd):/home/jovyan/local/$(basename $(pwd)) -p 8886:8886 -e GRANT_SUDO=yes --user root -e NB_GID=100 -e GRANT_SUDO=yes --gpus all jupyter-extensions start.sh jupyter lab --port 8886"