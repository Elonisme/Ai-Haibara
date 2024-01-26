;;; init-org-modern.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package valign
  :ensure t
  :hook
  (org-mode . valign-mode)
  )


(use-package org-modern
  :ensure t
  :custom
  ;; https://github.com/minad/org-modern/issues/134
  (org-modern-star '("○" "●" "▼"))
  (org-modern-list
   '((?- . "‧")
     (?+ . "►")
     (?* . "●")))
  (org-modern-checkbox
   '((?X . "☑")
     (?- . #("☐–" 0 2 (composition ((2)))))
     (?\s . "☐")))
  (org-modern-table nil)
  :hook
  (org-mode . org-modern-mode)
  )

(provide 'init-org-modern)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org-modern.el ends here
