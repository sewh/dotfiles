(when (string= system-type "darwin")
  (defun hash ()
    (interactive)
    (insert "#"))
  (global-set-key (kbd "M-3") 'hash)
  (global-set-key (kbd "C-c 3") 'hash)
  (use-package exec-path-from-shell
    :ensure t
    :config (exec-path-from-shell-initialize))
  )
