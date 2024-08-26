#!/opt/homebrew/bin/bash

function pve {
    if [[ $VIRTUAL_ENV == "" ]]; then
        source "$HOME/.venv/bin/activate"
    else
        deactivate
    fi
}

function cs {
    if [[ $CONDA_DEFAULT_ENV == "base" ]]; then
        conda activate CS3700
    else
        conda deactivate
    fi
}
