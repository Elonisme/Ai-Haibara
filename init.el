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



;; Initialize the package management system early
(package-initialize)

;; setting mirror site
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))




;; loading lisp directory
(let ((dir (locate-user-emacs-file "lisp")))
  (add-to-list 'load-path (file-name-as-directory dir)))


;; loading other packages
;; not showing meassgae in`*message*' buffer
(with-temp-message ""
  (require 'init-base)
  (require 'init-proxy)
  (require 'init-which-key)
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
  (require 'init-zotxt)
  (require 'init-rime)
  (require 'init-translate)
  (require 'init-adoc-mode)
  (require 'init-eaf)
  (require 'init-auto-save)
  (require 'init-typst)
  (require 'init-hugo)
  (require 'init-org-capture)
  (require 'init-wttrin)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("04aa1c3ccaee1cc2b93b246c6fbcd597f7e6832a97aaeac7e5891e6863236f9f" "6fc9e40b4375d9d8d0d9521505849ab4d04220ed470db0b78b700230da0a86c1" "b11edd2e0f97a0a7d5e66a9b82091b44431401ac394478beb44389cf54e6db28" "6bdc4e5f585bb4a500ea38f563ecf126570b9ab3be0598bdf607034bb07a8875" "76ddb2e196c6ba8f380c23d169cf2c8f561fd2013ad54b987c516d3cabc00216" "27eb4bbd908683d344af2a0b90d71698938ab9af1656b1aed87e68258ef8c980" "7c7026a406042e060bce2b56c77d715c3a4e608c31579d336cb825b09e60e827" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
