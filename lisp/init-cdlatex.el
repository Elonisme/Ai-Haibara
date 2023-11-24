;; Latex设置
(use-package cdlatex
  :ensure t
  :defer t
  :config
  (add-hook 'org-mode-hook 'org-cdlatex-mode)
  ) ;; 在 LaTeX 模式下自动开启 cdlatex


(provide 'init-cdlatex)
