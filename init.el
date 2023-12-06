;;; init.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; set straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


;; setting mirror site
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-enable-at-startup nil)


;; loading lisp directory
(let ((dir (locate-user-emacs-file "lisp")))
  (add-to-list 'load-path (file-name-as-directory dir)))

;; use y or n replace yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; open save-place
(save-place-mode 1)

;; loading other packages
;; not showing meassgae in`*message*' buffer
(with-temp-message ""
  (require 'init-pixel-scroll)
  (require 'init-number)
  (require 'init-pair)
  (require 'init-package)
  (require 'init-treesit)
  (require 'init-theme)
  (require 'init-dashboard)
  (require 'init-nerd-icons)
  (require 'init-all-the-icons)
  (require 'init-org)
  (require 'init-org-noter)
  (require 'init-org-contrib)
  (require 'init-org-modern)
  (require 'init-org-roam)
  (require 'init-latex)
  (require 'init-org-download)
  (require 'init-plantuml)
  (require 'init-mermaid)
  (require 'init-texfrag)
  (require 'init-fragtog)
  (require 'init-cdlatex)
  (require 'init-vertico)
  (require 'init-orderless)
  (require 'init-marginalia)
  (require 'init-yasnippet)
  (require 'init-lsp-bridge)
  (require 'init-savehist)
  (require 'init-typst)
  (require 'init-zotxt)
  (require 'init-rime)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
