#!/usr/bin/env bash

set -x
set -u
set -e

ln -s "${PWD}/.emacs" "${HOME}/.emacs"
ln -s "${PWD}/.emacs.d" "${HOME}/.emacs.d"

