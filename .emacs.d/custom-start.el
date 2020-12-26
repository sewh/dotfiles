(setq init-files '("packages.el"     ;; Package config and functions
		   "general.el"      ;; General and misc functions
                   "mac.el"          ;; macos-specific changes
		   "window.el"       ;; Appearance changes
                   "tabs.el"         ;; Tab bar changes
                   "dired.el"        ;; Dired changes
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

(let ((file (concat user-emacs-directory "device-specific.el")))
  (when (file-exists-p file)
    (add-to-list 'init-files file 't)))

(defun load-init-files ()
  (interactive)
  (dolist (file init-files)
    (load (concat user-emacs-directory file))))

(load-init-files)

