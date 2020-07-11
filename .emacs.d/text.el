(setq backup-directory (concat user-emacs-directory "backups"))

(setq backup-directory-alist
      `((".*" . ,backup-directory)))

(setq-default indent-tabs-mode nil)

(electric-pair-mode 't)
(show-paren-mode 't)
