;;; core-defaults.el --- Summary
;;; Commentary:
;;; Code:

;; User variables
(setq
 user-full-name "Emil Konstantinovitz"
 user-mail-address "emil@konstantinovitz.com")

;; Create frames instead of windows
(setq pop-up-frames t)

;; Buffer encodings
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment   'utf-8)


;; stop creating ~ files
(setq  make-backup-files nil)

;; Pixel scroll (as opposed to char scrool)
;; (pixel-scroll-mode t)

;; y/n for  answering yes/no questions
(fset 'yes-or-no-p 'y-or-n-p)

;; ???
(setq x-underline-at-descent-line t)

;; Initial buffer
(setq initial-buffer-choice nil)

;; Disable various startup things
(setq  inhibit-startup-screen t
       inhibit-startup-message t
       inhibit-startup-echo-area-message t
       initial-scratch-message nil)


(provide 'core-defaults)
