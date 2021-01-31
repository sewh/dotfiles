#!/usr/bin/env emacs --script

;; symlink in emacs directory
(make-symbolic-link
 (concat default-directory "emacs.d/")
 (concat (getenv "HOME") "/.emacs.d"))

