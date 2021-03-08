(use-package vscode-icon
  :ensure t)

(use-package dired-sidebar
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :bind (("C-#" . dired-sidebar-toggle-sidebar))
  :hook ((dired-sidebar-mode . (lambda ()
                                 (unless (file-remote-p default-directory)
                                   (auto-revert-mode)))))
  :init
  :config
  (setq dired-sidebar-theme 'vscode))

