;; Show column-number in the mode line
(column-number-mode 1)

;; Display time
(display-time-mode 1)

;; Disable menu at startup
(menu-bar-mode -1)

;; Disable tool bar at startup
(tool-bar-mode -1)

;; Prevent the cursor from blinking
(blink-cursor-mode 0)

;; Don't use messages that you don't read
(setq initial-scratch-message "")

;; Disable splash screen at startup
(setq inhibit-splash-screen t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Backup
(if (file-exists-p "~/.saves")
    nil
  (make-directory "~/.saves"))
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;; Define keyboard shortcuts
(global-set-key (kbd "C-c s") 'shell)
(global-set-key (kbd "C-c e") 'eshell)
(global-set-key (kbd "C-c m") 'compile)
(global-set-key (kbd "C-c r") 'R)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key [f11] 'toggle-fullscreen)

;; R settings
(setq inferior-R-args "--no-restore-history --no-save ")
(setq ess-history-file nil)

;; Windows resize
;; http://emacswiki.org/emacs/WindowResize
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)

(setq c-default-style "k&r"
          c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
