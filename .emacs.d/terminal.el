(defun term-name (name)
  (interactive "sName: ")
  (let ((buff (make-term name "bash")))
    (set-buffer buff)
    (term-mode)
    (term-char-mode)
    (switch-to-buffer buff)))

(global-set-key (kbd "M-~") 'term-name)
