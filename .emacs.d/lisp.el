(ensure-package 'slime)
(ensure-package 'paredit)

(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode)))
(add-hook 'lisp-mode-hook (lambda () (paredit-mode)))

(when (executable-find "sbcl")
  (setq inferior-lisp-program "/usr/bin/sbcl"))

