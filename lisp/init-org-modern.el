;;; init-org-modern.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package org-modern
  :ensure t
  :config
  (add-hook 'org-mode-hook #'org-modern-mode)
)

(provide 'init-org-modern)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org-modern.el ends here
