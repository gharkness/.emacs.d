;; no fringes or scrollbars
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq initial-major-mode 'text-mode)

(add-hook 'prog-mode-hook 'relative-line-numbers-mode t)
(add-hook 'prog-mode-hook 'line-number-mode t)
(add-hook 'prog-mode-hook 'column-number-mode t)

(setq gdb-many-windows t)

;; y or n is enough
(defalias 'yes-or-no-p 'y-or-n-p)

;; no bell
(custom-set-variables '(ring-bell-function 'ignore))
(setq visible-bell nil)

;(setq inhibit-splash-screen t)
;(setq inhibit-startup-message t)

(blink-cursor-mode t)

(require-package 'diminish)
(diminish 'visual-line-mode)

;(require 'powerline)
;(powerline-default-theme)
;(setq powerline-arrow-shape 'arrow14)
;(require 'airline-themes)
(setq sml/theme 'dark)
(setq sml/no-confirm-load-theme t)
(sml/setup)
;(load-theme 'airline-light)


(provide 'init-interface)
