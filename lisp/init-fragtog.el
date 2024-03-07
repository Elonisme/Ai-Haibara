;;; init-fragtog.el -- init-fragtog settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:
(use-package org-fragtog
  :after org
  :custom
  (org-startup-with-latex-preview t)
  :hook
  (org-mode . org-fragtog-mode)
  :custom
  (org-format-latex-options
   (plist-put org-format-latex-options :scale 2)
   (plist-put org-format-latex-options :foreground 'auto)
   (plist-put org-format-latex-options :background 'auto)))

(provide 'init-fragtog)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-fragtog.el ends here
