(ensure-package 'olivetti)
(ensure-package 'org-bullets)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-directory "~/org")
(setq org-default-notes-file (concat org-directory "/inbox.org"))
(setq org-todo-keywords
      '((sequence "TODO(t!)" "IN-PROGRESS(p!)" "ON-HOLD(h@)" "|" "DONE(d!)" "CANCELLED(c@)")))

(add-hook 'org-mode-hook (lambda ()
                           (org-indent-mode)
                           (visual-line-mode)
                           (org-bullets-mode)
                           (mixed-pitch-mode)))
