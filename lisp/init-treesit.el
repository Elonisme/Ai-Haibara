;;; init-treesit.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; set treesit
(use-package treesit-auto
  :ensure t
  :config
  (global-treesit-auto-mode))

(provide 'init-treesit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-treesit.el ends here
