(setq init-files '("package.el"
;;                   "nano.el"
                   "ui.el"
                   "sidebar.el"
                   "keybindings.el"
                   "text.el"
                   "macos.el"
                   "windows-nt.el"
                   "dired.el"
                   "tabmode.el"
                   "magit.el"
                   "ivy.el"
                   "tree-sitter.el"
                   "completion.el"
                   "org.el"
                   "org-shell.el"
                   "smartparens.el"
                   "markdown.el"
                   "flyspell.el"
                   "restclient.el"
                   "projectile.el"
                   "yaml.el"
                   "flycheck.el"
                   "docker.el"
                   "python.el"
                   "rust.el"
                   "go.el"
                   "vterm.el"))

(let ((file (concat user-emacs-directory "device-specific.el")))
  (when (file-exists-p file)
    (add-to-list 'init-files file 't)))

(defun load-init-files ()
  (interactive)
  (dolist (file init-files)
    (load (concat user-emacs-directory file))))

(load-init-files)

(setq custom-file (concat user-emacs-directory "/custom.el"))
(load-file custom-file)
