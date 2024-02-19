;;; init-treesit.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; set treesit

;; (require 'tree-sitter)
;; (require 'tree-sitter-langs)

;; (global-tree-sitter-mode)


(use-package treesit-auto
  :ensure t
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(provide 'init-treesit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-treesit.el ends here
