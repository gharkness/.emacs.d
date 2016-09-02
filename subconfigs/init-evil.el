(require 'evil)
(evil-mode t)

(require-package 'evil-surround)
(require-package 'evil-matchit)
(require-package 'evil-leader)

(global-evil-matchit-mode t)
(global-evil-surround-mode t)
(global-evil-leader-mode t)
(setq evil-leader/in-all-states t)

(setq evil-emacs-state-cursor '("red" box)
      evil-normal-state-cursor '("white" box)
      evil-visual-state-cursor '("orange" box)
      evil-insert-state-cursor '("white" bar)
      evil-replace-state-cursor '("red" bar)
      evil-operator-state-cursor '("red" hollow))

(defun my-evil-terminal-cursor-change ()
  (when (string= (getenv "TERM_PROGRAM") "iTerm.app")
    (add-hook 'evil-insert-state-entry-hook (lambda () (my-send-string-to-terminal "\e]50;CursorShape=1\x7")))
    (add-hook 'evil-insert-state-exit-hook  (lambda () (my-send-string-to-terminal "\e]50;CursorShape=0\x7"))))
  (when (and (getenv "TMUX") (string= (getenv "TERM_PROGRAM") "iTerm.app"))
    (add-hook 'evil-insert-state-entry-hook (lambda () (my-send-string-to-terminal "\ePtmux;\e\e]50;CursorShape=1\x7\e\\")))
    (add-hook 'evil-insert-state-exit-hook  (lambda () (my-send-string-to-terminal "\ePtmux;\e\e]50;CursorShape=0\x7\e\\")))))

(add-hook 'after-make-frame-functions (lambda (frame) (my-evil-terminal-cursor-change)))
(my-evil-terminal-cursor-change)

;; ex-mode commands
;; Normal map
(defun vimlike-quit ()
    "Vimlike ':q' behavior: close current window if there are split windows;
    otherwise, close current tab (elscreen)."
    (interactive)
    (let ((one-elscreen (elscreen-one-screen-p))
	  (one-window (one-window-p))
	  )
      (cond
					; if current tab has split windows in it, close the current live window
       ((not one-window)
	(delete-window) ; delete the current window
	(balance-windows) ; balance remaining windows
	nil)
					; if there are multiple elscreens (tabs), close the current elscreen
       ((not one-elscreen)
	(elscreen-kill)
	nil)
					; if there is only one elscreen, just try to quit (calling elscreen-kill
					; will not work, because elscreen-kill fails if there is only one
					; elscreen)
       (one-elscreen
	(evil-quit)
	nil)
       )))

(defun vimlike-write-quit ()
  "Vimlike ':wq' behavior: write then close..."
  (interactive)
  (save-buffer)
  (vimlike-quit))

(evil-ex-define-cmd "q" 'vimlike-quit)
(evil-ex-define-cmd "wq" 'vimlike-write-quit)

(evil-leader/set-leader ",")
(evil-leader/set-key "f" 'find-file)
(evil-leader/set-key "co" 'evilnc-comment-or-uncomment-lines) ; nerd commenter
(evil-leader/set-key "v" (lambda () (interactive)
			   (split-window-horizontally)
			   (evil-window-right 1)))
(evil-leader/set-key "p" (lambda()                 ; paste on a new line below current
			   (interactive)
			   (evil-open-below 1)
			   (evil-paste-after 1)
			   (evil-normal-state)))
(evil-leader/set-key "P" (lambda()                 ; paste on a new line below current
			   (interactive)
			   (evil-open-above 1)
			   (evil-previous-visual-line 1)
			   (evil-paste-after 1)
			   (evil-normal-state)))
(evil-leader/set-key "o" (lambda () ; <leader>o open line below
			   (interactive)
			   (evil-open-below 1)
			   (evil-normal-state)))
(evil-leader/set-key "O" (lambda () ; <leader>o open line below
			   (interactive)
			   (evil-open-above 1)
			   (evil-normal-state)))
(evil-leader/set-key "ct" 'delete-trailing-whitespace)

(provide 'init-evil)
