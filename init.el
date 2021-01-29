;;; https://dustinlacewell.github.io/emacs.d/#org3d3c1a8
;;; https://gitlab.com/buildfunthings/emacs-config/-/blob/master/loader.org
;;; https://dustinlacewell.github.io/emacs.d/#orgfc39f6d
;;; Create math/apl keyboard layout http://xahlee.info/kbd/creating_apl_keyboard_layout.html

;;; --- Bootstrap package manager ---
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(setq straight-use-package-by-default t)

(use-package nvz-core
  :straight (nvz-core :local-repo "nvz-core"))

;;; --- Prog mode ---
(use-package which-key
  :hook (prog-mode . which-key-mode))

(use-package flycheck
  :hook (prog-mode . flycheck-mode))

(use-package undo-tree
  :hook (prog-mode . undo-tree-mode))

(use-package yasnippet
  :hook (prog-mode . yas-minor-mode))

(use-package show-paren
  :straight nil
  :hook ((prog-mode) . show-paren-mode))

;;; --- Lisp coding mode ---
(use-package lispy
  :hook ((clojure-mode emacs-lisp-mode) . lispy-mode))

(use-package aggressive-indent
  :hook ((clojure-mode emacs-lisp-mode) . aggressive-indent-mode))

(use-package rainbow-delimiters
  :hook ((clojure-mode emacs-lisp-mode) . rainbow-delimiters-mode))

;;; ---- Clojure mode ---
(use-package clojure-mode
  :hook (clojure-mode . subword-mode))

(use-package flycheck-clj-kondo
  :requires (clojure-mode flycheck))

(use-package clojure-snippets
  :requires (yasnippet clojure-mode))

(use-package cider
  :init
  (setq cider-use-overlays 'both
	cider-require-ns-on-set t))

;;; --- Comletion ---
(use-package smex)

(use-package ivy
  :init
  (setq ivy-height 8
	ivy-count-format ""
	ivy-use-virtual-buffers t
	enable-recursive-minibuffers t
	ivy-use-recursive-minibuffers t)
  :hook ((prog-mode) . ivy-mode))

;; Counsel
(use-package counsel
  :hook (prog-mode . counsel-mode))

;; Swiper
(use-package swiper
  :bind (:map global-map
	      ("C-s" . swiper)))

;;; --- Company ---
(use-package company
  :init (setq company-idle-delay 0.2
	      company-minimum-prefix-length 3)
	
  :hook (prog-mode . company-mode))

;;; --- Projects ---
(use-package projectile
  :hook (prog-mode . projectile-mode))

;;; --- Theme ---
(use-package nano
  :straight (nano :local-repo "nano-emacs"))

;;; .emacs ends here
