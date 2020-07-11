(setq init-files '("packages.el"     ;; Package config and functions
		   "general.el"      ;; General and misc functions
		   "window.el"       ;; Appearance changes
		   "text.el"         ;; General text editing changes
		   "magit.el"        ;; Magit config
                   "projectile.el"   ;; Projectile config
                   "helm.el"         ;; Helm changes and overrides
                   "lisp.el"         ;; Common Lisp config
		   ))

(defun load-init-files ()
  (interactive)
  (dolist (file init-files)
    (load (concat user-emacs-directory file))))

(load-init-files)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (slime helm-projectile projectile helm-ag helm magit "magit" "magit"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
