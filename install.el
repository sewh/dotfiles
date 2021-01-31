#!/usr/bin/env emacs --script

;; symlink in emacs directory
(make-symbolic-link
 (concat default-directory "emacs.d/")
 "~/.emacs.d")

