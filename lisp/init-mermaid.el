;;; init-mermaid.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package ob-mermaid
  :ensure t
  :config
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((mermaid . t)
     (scheme . t)))
  (setq ob-mermaid-cli-path "/usr/bin/mmdc")
)

(provide 'init-mermaid)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-mermaid.el ends here
