;;; init-org-fragtog.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; auto refresh math function
(use-package org-fragtog
  :ensure t
  :after org
  :hook
  (org-mode . org-fragtog-mode))

(provide 'init-fragtog)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;  init-org-fragtog.el ends here
