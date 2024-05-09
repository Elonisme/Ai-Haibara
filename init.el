;;; init.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:
;; set straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Initialize the package management system early
(package-initialize)

;; setting mirror site
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))


;; loading lisp directory
(let ((dir (locate-user-emacs-file "lisp")))
  (add-to-list 'load-path (file-name-as-directory dir)))

(require 'init-base)
(require 'init-proxy)
(require 'init-which-key)
(require 'init-pixel-scroll)
(require 'init-number)
(require 'init-pair)
(require 'init-package)
(require 'init-theme)
(require 'init-dashboard)
(require 'init-nerd-icons)
(require 'init-all-the-icons)
(require 'init-org)
(require 'init-org-contrib)
(require 'init-org-modern)
(require 'init-org-roam)
(require 'init-latex)
(require 'init-org-download)
(require 'init-plantuml)
(require 'init-fragtog)
(require 'init-cdlatex)
(require 'init-vertico)
(require 'init-orderless)
(require 'init-marginalia)
(require 'init-yasnippet)
(require 'init-lsp-bridge)
(require 'init-savehist)
(require 'init-rime)
(require 'init-hugo)
(require 'init-org-capture)
(require 'init-wttrin)
(require 'init-auto-save)
(require 'init-quick-run)
(require 'init-helper)
(require 'init-keycast)
(require 'init-hightlight)
(require 'init-delsel)
(require 'init-webjump)
(require 'init-write)
(require 'init-tools)
(require 'init-treesit)
(require 'init-typst-ts-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
