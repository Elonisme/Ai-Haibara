;;; init-org.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package org
  :ensure nil
  :config
  ;; set defaut imgs width
  (setq org-image-actual-width '(400))
  
  ;; auto open inline-images
  (setq org-startup-with-inline-images t)
  (setq org-startup-with-latex-preview t)
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5))
  (setq org-hide-emphasis-markers t)
  
  ;; use xelatex to produce chinese pdf in org mode
  (setq org-latex-pdf-process
	'("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
  )

(use-package org-appear
  :commands (org-appear-mode)
  :ensure t
  :custom (org-appear-autolinks nil)
  :hook (org-mode . org-appear-mode))

(use-package org
  :ensure nil
  :hook
  (org-mode . prettify-symbols-in-org-mode)
  :config
  (defun prettify-symbols-in-org-mode ()
    "Beautify Org Symbols"
    (push '(":category:" . "▲") prettify-symbols-alist)
    (push '(":PROPERTIES:" . "📄") prettify-symbols-alist)
    (push '(":END:" . "∎") prettify-symbols-alist)
    (push '("#+title:" . "📑") prettify-symbols-alist)
    (push '("#+subtitle:" . "⮱") prettify-symbols-alist)
    (push '(":SETTINGS:" . "⌘") prettify-symbols-alist)
    (push '("#+BEGIN_SRC" . "«" ) prettify-symbols-alist)
    (push '("#+END_SRC" . "»" ) prettify-symbols-alist)
    (push '("#+BEGIN_COMMENT" . "♯" ) prettify-symbols-alist)
    (push '("#+END_COMMENT" . "▪" ) prettify-symbols-alist)
    (prettify-symbols-mode)))

(provide 'init-org)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org.el ends here
