(when (string= system-type "darwin")
  (global-set-key (kbd "M-3") 'hash)
  (use-package exec-path-from-shell
    :ensure t
    :config (exec-path-from-shell-initialize))
  )
