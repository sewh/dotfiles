(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(add-to-list 'default-frame-alist '(font . "Fira Code-12"))
(add-hook 'prog-mode-hook (lambda () (display-line-numbers-mode)))

(setq inhibit-startup-screen t)

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(windmove-mode t)
(windmove-default-keybindings 'meta)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(use-package dracula-theme
  :ensure t
  :init
  (load-theme 'dracula))

(use-package powerline
  :ensure t
  :init
  (powerline-default-theme))

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))

(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-s" . helm-occur))
  :init
  (helm-mode 1))

(use-package rg
  :ensure t
  :init
  (rg-enable-default-bindings))

(use-package projectile
  :ensure t
  :init
  (projectile-mode t)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (setq projectile-project-search-path '("~/dev")))

(use-package helm-projectile
  :ensure t
  :init
  (helm-projectile-on))

(use-package vterm
  :ensure t)

(find-file (concat user-emacs-directory "init.el"))
