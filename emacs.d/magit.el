(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status))
  :hook ((magit-mode . magit-auto-revert-mode)))

