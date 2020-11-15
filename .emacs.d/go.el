(ensure-package 'go-mode)

(defun sewh--golang-mode-settings ()
  (interactive)
  (setq indent-tabs-mode t)
  (setq tab-width 2))

(add-hook 'go-mode-hook 'sewh--golang-mode-settings)
