(defun org-shell--new-code-block ()
  (interactive)
  ;; execute current src block
  (org-babel-execute-src-block)
  ;; set up new source block
  (goto-char (point-max))
  (insert "\n#+BEGIN_SRC bash\n")
  (setq org-shell--current-point (point))
  (insert "\n#+END_SRC\n")
  (goto-char org-shell--current-point))

(defun org-shell ()
  (interactive)
  (switch-to-buffer-other-window "org-shell")
  (org-mode)
  (org-shell-mode)
  (org-shell--new-code-block))

(define-minor-mode org-shell-mode
  "org-shell minor mode"
  nil
  :global t
  :keymap
  (list
   ((kbd "C-c RET") . (lambda () (org-shell--new-code-block))))

  (setq org-confirm-babel-evaluate nil))

