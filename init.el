(setq user-full-name "Garrett Harkness")
(setq user-mail-address "garretth@iastate.edu")

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
    (package-initialize))
(display-time-mode t)
(line-number-mode t)

;(add-to-list 'custom-theme-load-path "~/.emacs.d/")
(load-theme 'ample t)

(add-to-list 'exec-path "/bin")
(add-to-list 'exec-path "/usr/local/bin")

(add-to-list 'load-path (expand-file-name "subconfigs" user-emacs-directory))
(require 'init-packages)
(require 'init-evil)
(require 'init-interface)
(require 'init-programming)
(require 'init-helm)
(require 'autopair)
(autopair-global-mode)
(org-babel-do-load-languages
  'org-babel-load-languages '((C . t)))

(setq tab-always-indent 'complete)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("daa7ac1dde9d089a998fa2f90c19354fc4ef12bcfd312aca1bcf003a7c381501" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "7122873f9ac192e4f2cfafe1679fe6b3db658ac64593efe4bc10c52d7573c6c1" "c7f838704d7caa88bc337464867c22af0a502e32154558b0f6c9c3c6e8650122" "f3f85a358dc6c3642bc6e0ca335c8909a2210814e5a7d4301993822bbf7db4e6" "cfa7053f155661faa33ef648f55d524eb97854f8f0ff9ff91a08b3ba47a9a25f" "06b2849748590f7f991bf0aaaea96611bb3a6982cad8b1e3fc707055b96d64ca" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "aab598c4d024d544b4e8b356a95ca693afa9de000b154bd2f86eed68c9e75557" "6998bd3671091820a6930b52aab30b776faea41449b4246fdce14079b3e7d125" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "f641bdb1b534a06baa5e05ffdb5039fb265fde2764fbfd9a90b0d23b75f3936b" default)))
 '(display-time-mode t)
 '(ring-bell-function (quote ignore) t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'default-frame-alist
             '(font . "Hack 13"))

;(setq powerline-utf-8-separator-left        #xe0b0
;      powerline-utf-8-separator-right       #xe0b2
;      airline-utf-glyph-separator-left      #xe0b0
;      airline-utf-glyph-separator-right     #xe0b2
;      airline-utf-glyph-subseparator-left   #xe0b1
;      airline-utf-glyph-subseparator-right  #xe0b3
;      airline-utf-glyph-branch              #xe0a0
;      airline-utf-glyph-readonly            #xe0a2
;      airline-utf-glyph-linenumber          #xe0a1)
