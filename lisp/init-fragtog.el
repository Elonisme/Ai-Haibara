;; 自动刷新数学公式
(use-package org-fragtog
  :ensure t
  :after org
  :hook
  (org-mode . org-fragtog-mode))

(provide 'init-fragtog)
