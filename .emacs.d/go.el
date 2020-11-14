(ensure-package 'go-mode)

(defun sewh--golang-mode-settings ()
  (setq
   tab-width 2
   default-tab-width 2
   indent-tabs-mode t))

(add-hook 'golang-mode-hook 'sewh--golang-mode-settings)
