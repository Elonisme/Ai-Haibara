;;; init-treesit.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:


(use-package tree-sitter
  :ensure t
  :hook (prog-mode . tree-sitter-mode)
  )

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter
  :hook(tree-sitter-mode . tree-sitter-hl-mode)
  )


(use-package treesit-auto
  :ensure t
)

(provide 'init-treesit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-treesit.el ends here
