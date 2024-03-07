;;; init-org-capture.el -- init-org-capture settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package org
  :ensure t
  :config
  ;; 设置 Org 文件的存储路径
  (setq org-directory "~/Documents/Writing/org-files/")

  ;; 设置 Org Capture 模板
  (setq org-capture-templates
        `(("i" "Inbox" entry (file+headline ,(concat org-directory "inbox.org") "Inbox")
           "* %U - %^{heading} %^g\n %?\n")
          ("n" "Notes" entry (file+headline ,(concat org-directory "notes/inbox.org") "Notes")
           "* %^{heading} %t %^g\n  %?\n"))
        )

  ;; 启用 Org Capture 模式
  :bind (("C-c c" . org-capture)
         ("C-c f" . org-capture-goto-target))
  )

(provide 'init-org-capture)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org-capture.el ends here
