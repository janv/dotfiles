(setenv "PATH"
        "/Users/jan/.rbenv/shims:/Users/jan/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11R6/bin")

;;emacs-nav config
;;(add-to-list 'load-path (concat user-specific-dir "/nav"))
(require 'nav)
;;(disable-overeager-window-splitting)
;; Optional: set up a quick key to toggle nav
(global-set-key [f8] 'nav-toggle)

;;Evil mode
(require 'evil)
(evil-mode 1)

;;HAML Mode
(require 'haml-mode)

;;coffee-mode
(add-to-list 'load-path (concat user-specific-dir "/coffee-mode"))
(require 'coffee-mode)

(define-key coffee-mode-map  (kbd "S-r") 'coffee-compile-region)

;;textmate.el
(add-to-list 'load-path (concat user-specific-dir "/textmate"))
(require 'textmate)
(textmate-mode)

;;haskell-mode
(add-to-list 'load-path (concat user-specific-dir "/haskell-mode"))
(require 'haskell-mode)

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(setq tab-width 2)
(setq tab-stop-list (number-sequence 2 200 2))

(custom-set-variables
 '(coffee-tab-width 2)
 '(indent-tabs-mode nil)
 '(tab-width 2)
 '(show-trailing-whitespace t)
 '(cua-enable-cua-keys nil))

(defun select-next-window ()
  "Switch to the next window"
  (interactive)
  (select-window (next-window)))

(defun select-previous-window ()
  "Switch to the previous window"
  (interactive)
  (select-window (previous-window)))

(global-set-key (kbd "s-<right>") 'select-next-window)
(global-set-key (kbd "s-<left>")  'select-previous-window)

(cua-mode 1)
