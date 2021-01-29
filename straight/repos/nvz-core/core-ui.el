;;; core-ui --- Summary
;;; Commentary:
;;; Code:

;; Font
(setq default-frame-alist
      (append (list
	       '(font . "Roboto Mono:style=Thin:size=16")
	       '(min-height . 1)  '(height     . 45)
	       '(min-width  . 1) '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 24)
               '(left-fringe    . 0)
               '(right-fringe   . 0)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))

;; No empty line indicators
(setq indicate-empty-lines nil)

;; No cursor in inactive windows
(setq cursor-in-non-selected-windows nil)

;; Moderate font lock
(setq font-lock-maximum-decoration nil)

;; No confirmation for visiting non-existent files
(setq confirm-nonexistent-file-or-buffer nil)

;; No frame title
;; (setq frame-title-format nil)

;; No file fialog
(setq use-file-dialog nil)

;; No dialog box
(setq use-dialog-box nil)

;; No popup windows
(setq pop-up-windows nil)

(menu-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)
(scroll-bar-mode 0)

;; Vertical window divider
(setq window-divider-default-right-width 24)
(setq window-divider-default-places 'right-only)
(window-divider-mode 1)

(provide 'core-ui)
;;; core-ui.el ends here
