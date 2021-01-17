(ensure-package 'rust-mode)
(ensure-package 'cargo)
(ensure-package 'racer)
(ensure-package 'flycheck-rust)

(add-hook 'rust-mode-hook 'flycheck-mode)
(add-hook 'rust-mode-hook 'flycheck-rust-setup)
