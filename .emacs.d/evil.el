(ensure-package 'evil)
(ensure-package 'key-chord)

(evil-mode 1)
(key-chord-mode 1)

(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
