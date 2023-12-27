;;; init-org-modern.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

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
  (org-modern-timestamp nil)
  (org-modern-tag nil)
  (org-modern-todo nil)
  (org-modern-block-name nil)
  (org-modern-block-fringe nil)
  (org-modern-keyword nil)
  (org-modern-priority nil)
  :hook
  (org-mode . org-modern-mode)
  :config
  (advice-add
   'org-modern--make-font-lock-keywords
   :filter-return
   (lambda (result)
     (append
      result
      (when-let ((bullet (alist-get ?- org-modern-list)))
        `(("^\\(-\\)[ \t]" 1 '(face nil display ,bullet))))
      (when-let ((bullet (alist-get ?+ org-modern-list)))
        `(("^[ ]\\{2\\}\\(-\\)[ \t]" 1 '(face nil display ,bullet))))
      (when-let ((bullet (alist-get ?* org-modern-list)))
        `(("^[ ]\\{4\\}\\(-\\)[ \t]" 1 '(face nil display ,bullet))))))))

;; (use-package org-modern
;;   :ensure t
;;   :config
;;   (add-hook 'org-mode-hook #'org-modern-mode)
;; )

(provide 'init-org-modern)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org-modern.el ends here
