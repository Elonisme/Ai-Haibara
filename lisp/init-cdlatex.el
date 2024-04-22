;;; init-cdlatex.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; cdlatex offer latex some complete function
(use-package cdlatex
  :ensure t
  :after tex
  :config
  (add-hook 'org-mode-hook 'org-cdlatex-mode)
  ) ;; 在 LaTeX 模式下自动开启 cdlatex


(provide 'init-cdlatex)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-cdlatex.el ends here
