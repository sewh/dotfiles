(when (string= system-type "darwin")
  (use-package exec-path-from-shell
    :ensure t
    :config (exec-path-from-shell-initialize))
  )
