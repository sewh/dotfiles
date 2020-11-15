(setq init-files '("packages.el"     ;; Package config and functions
		   "general.el"      ;; General and misc functions
		   "window.el"       ;; Appearance changes
                   "org.el"          ;; Org Mode changes
		   "text.el"         ;; General text editing changes
		   "magit.el"        ;; Magit config
                   "projectile.el"   ;; Projectile config
                   "ivy.el"          ;; Ivy changes and overrides
                   "lisp.el"         ;; Common Lisp config
                   "meson.el"        ;; Meson build config
                   "go.el"           ;; Golang config
                   "markdown.el"     ;; Markdown config
		   ))

(defun load-init-files ()
  (interactive)
  (dolist (file init-files)
    (load (concat user-emacs-directory file))))

(load-init-files)

