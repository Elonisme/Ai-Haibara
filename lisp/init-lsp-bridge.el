;;; init-lsp-bridge.el -- lsp settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package lsp-bridge
  :straight '(lsp-bridge :type git :host github :repo "manateelazycat/lsp-bridge"
                         :files (:defaults "*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
                         :build (:not compile))
  :hook
  ((emacs-lisp-mode . lsp-bridge-mode)
   (LaTeX-mode . lsp-bridge-mode))
  )

(provide 'init-lsp-bridge)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-lsp-bridge.el ends here
