;; 为org mode显示数学公式
(use-package texfrag
  :ensure t
  :hook (org-mode . texfrag-mode)
  :config
  (setq texfrag-extensions '("pdf"))
  (setq texfrag-dpi 900))


(provide 'init-texfrag)
