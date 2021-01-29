(use-package nano-base-colors :straight nil)
(use-package nano-colors :straight nil)
(use-package nano-theme-dark
  :straight nil
  :config
  (nano-theme-set-dark))

(use-package nano-faces
  :straight nil
  :config
  (nano-faces))

(use-package nano-theme
  :straight nil
  :config
  (nano-theme))

(use-package nano-modeline
  :straight nil)

(provide 'nano)
;;; nano.el ends here
