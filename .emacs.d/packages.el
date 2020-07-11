(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq installed-packages-file (concat user-emacs-directory "installed-packages.el"))
(setq installed-packages '())

(defun save-installed-packages ()
  (let ((buf (find-file-noselect installed-packages-file)))
    (set-buffer buf)
    (erase-buffer)
    (print (list 'setq 'installed-packages (list 'quote installed-packages)) buf)
    (save-buffer)
    (kill-buffer)))

(defun load-installed-packages ()
  (when (file-exists-p installed-packages-file)
    (load installed-packages-file)))

(load-installed-packages)

(defun ensure-package (package)
  (when (not (member package installed-packages))
    (package-refresh-contents)
    (package-install package)
    (add-to-list 'installed-packages package)
    (save-installed-packages)))

(defun upgrade-packages ()
  (interactive)
  (package-refresh-contents)
  (dolist (package installed-packages)
    (package-reinstall package)))

(defun package-installed (package)
  (if (member package installed-packages)
      't
    nil))
