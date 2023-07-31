(setq backup-directory (concat user-emacs-directory "backups"))

(setq backup-directory-alist
      `((".*" . ,backup-directory)))

(setq-default indent-tabs-mode nil)
(show-paren-mode 't)
