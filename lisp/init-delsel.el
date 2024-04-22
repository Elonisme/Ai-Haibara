;;; init-delsel.el -- init-delsel settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:
(use-package delsel
  :ensure t
  :hook (after-init . delete-selection-mode))

(provide 'init-delsel)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-delsel.el ends here
