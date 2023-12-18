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
    (push '(":PROPERTIES:" . "🗅") prettify-symbols-alist)
    (push '(":END:" . "∎") prettify-symbols-alist)
    (push '("#+TITLE:" . "🗎") prettify-symbols-alist)
    (push '("#+SUBTITLE:" . "⮱") prettify-symbols-alist)
    (push '(":SETTINGS:" . "⌘") prettify-symbols-alist)
    (push '("#+begin_src" . "«" ) prettify-symbols-alist)
    (push '("#+end_src" . "»" ) prettify-symbols-alist)
    (push '("#+begin_comment" . "♯" ) prettify-symbols-alist)
    (push '("#+end_comment" . "▪" ) prettify-symbols-alist)
    (prettify-symbols-mode)))

(provide 'init-org)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org.el ends here
