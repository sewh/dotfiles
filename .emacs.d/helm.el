(ensure-package 'helm)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-buffers-list)


;; configure helm ag with ripgrep if ripgrep exists
;; on the system
(when (executable-find "rg")
  (ensure-package 'helm-ag)
  (setq helm-ag-base-command "rg --vimgrep --no-heading --smart-case")
  (global-set-key (kbd "<f3>") 'helm-do-ag)
  (global-set-key (kbd "<f4>") 'helm-do-ag-project-root))

;; configure helm with projectile if it's installed
(when (package-installed 'projectile)
  (ensure-package 'helm-projectile)
  (global-set-key (kbd "C-c C-f") 'helm-projectile-find-file)
  (global-set-key (kbd "C-c C-p") 'helm-projectile-switch-project))
