(ensure-package 'slime)

(when (executable-find "sbcl")
  (setq inferior-lisp-program "/usr/bin/sbcl"))

