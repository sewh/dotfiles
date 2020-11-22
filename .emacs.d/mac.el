(when (string-equal system-type "darwin")
  (global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#"))))
