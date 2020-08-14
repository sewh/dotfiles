(setq init-files '("packages.el"     ;; Package config and functions
		   "general.el"      ;; General and misc functions
		   "window.el"       ;; Appearance changes
                   "org.el"          ;; Org Mode changes
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
 '(custom-enabled-themes '(tsdh-light))
 '(package-selected-packages
   '(paredit mixed-pitch mixed-width org-bullets olivetti slime helm-projectile projectile helm-ag helm magit "magit" "magit")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#fafafa" :foreground "#383a42" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 120 :width normal :foundry "pyrs" :family "Roboto Mono")))))
