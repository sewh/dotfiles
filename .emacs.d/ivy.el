(ensure-package 'ivy)
(ensure-package 'swiper)
(ensure-package 'counsel)

(ivy-mode 1)
(counsel-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c k") 'counsel-rg)




