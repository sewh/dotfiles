(setq init-files '("packages.el"     ;; Package config and functions
		   "general.el"      ;; General and misc functions
		   "window.el"       ;; Appearance changes
                   "org.el"          ;; Org Mode changes
		   "text.el"         ;; General text editing changes
		   "magit.el"        ;; Magit config
                   "projectile.el"   ;; Projectile config
                   ;;                   "helm.el"         ;; Helm changes and overrides
                   "ivy.el"          ;; Ivy changes and overrides
                   "lisp.el"         ;; Common Lisp config
                   "meson.el"        ;; Meson build config
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
 '(custom-enabled-themes '(tron-legacy))
 '(custom-safe-themes
   '("d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "24714e2cb4a9d6ec1335de295966906474fdb668429549416ed8636196cb1441" default))
 '(ivy-mode t)
 '(package-selected-packages
   '(tron-legacy-theme counsel council swiper ivy dracula-theme meson-mode paredit mixed-pitch mixed-width org-bullets olivetti slime projectile helm-ag magit "magit" "magit")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:font "Roboto Mono-12"))))
 '(variable-pitch ((t (:font "Roboto-12")))))
