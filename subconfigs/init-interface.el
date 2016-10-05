;; Many settings taken from: http://tobytripp.github.io/emacs.d/index.html 

;; Decorations
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq inhibit-splash-screen t)

;; Bookmark List instead of Splash Screen
(require 'bookmark)
(bookmark-bmenu-list)
(switch-to-buffer "*Bookmark List*")

;; Disable Backup Files
(setq make-backup-files nil)
(setq auto-save-devault nil)

;; Hide the fringe
(set-fringe-style 0)

;; Highlight the current line in the buffer
(global-hl-line-mode 1)

;; Enable some features that the Emacs developers have deemed scary
(put 'ido-exit-minibuffer 'disabled nil)
(put 'upcase-region       'disabled nil)
(put 'narrow-to-region    'disabled nil)
(put 'scroll-left         'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)



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
