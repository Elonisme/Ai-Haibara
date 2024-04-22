;;; init-write.el -- init-write settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package olivetti
  :ensure t
  :hook
  (LaTeX-mode . olivetti-mode)
  (org-mode . olivetti-mode)
  )

(provide 'init-write)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-write.el ends here
