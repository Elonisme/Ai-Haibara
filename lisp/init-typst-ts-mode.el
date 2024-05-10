;;; init-typst-ts-mode.el -- init-typst-ts-mode settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; (add-to-list 'treesit-language-source-alist
;;              '(typst "https://github.com/uben0/tree-sitter-typst"))
;; (treesit-install-language-grammar 'typst)

(use-package typst-ts-mode
  :straight '(typst-ts-mode :type git :host sourcehut
                            :repo "meow_king/typst-ts-mode"
                            :files (:defaults "*.el"))
  :custom
  (typst-ts-mode-watch-options "--open")
  )

(add-to-list 'auto-mode-alist '("\\.typ\\'" . typst-ts-mode))

(provide 'init-typst-ts-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-typst-ts-mode.el ends here
