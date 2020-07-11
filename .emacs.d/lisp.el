(ensure-package 'slime)

(when (executable-find "sbcl")
  (setq inferior-lisp-program "/opt/sbcl/bin/sbcl"))

