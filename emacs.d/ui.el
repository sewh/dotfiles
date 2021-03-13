(use-package doom-themes
  :ensure t)

(use-package doom-modeline
  :ensure t
  :config
  (setq doom-modeline-icon nil)
  (doom-modeline-mode 1))

(use-package origami
  :ensure t
  :bind (("C-]" . origami-recursively-toggle-node))
  :config
  (global-origami-mode))

(tool-bar-mode -1)
(scroll-bar-mode -1)
(unless (string= system-type "darwin") (menu-bar-mode -1))
(setq ring-bell-function 'ignore)

(setq scroll-step 1)
(setq scroll-conservatively 10000)
