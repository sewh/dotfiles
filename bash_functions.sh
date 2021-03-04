#!/bin/bash

VENV_DIR="${HOME}/.local/venvs"

venv() {
    local venv="${1}"
    local venvp="${VENV_DIR}/${venv}"

    if [[ -z "${venv}" ]] ; then
        echo "Usage: venv <name of venv>"
    fi

    [[ -d "${VENV_DIR}" ]] || mkdir -p "${VENV_DIR}"
    if [[ ! -d "${venvp}" ]] ; then
        echo "Creating venv at ${venvp}"
        python3 -m venv "${venvp}"
    fi
    source "${venvp}/bin/activate"
}
