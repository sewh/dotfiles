(use-package vterm
  :ensure t)

(defun vterm-named (name)
  (interactive "sTerminal name: ")
  (let ((term-name (concat "vterm-" name)))
    (vterm term-name)))

(global-set-key (kbd "C-x v") #'vterm-named)
