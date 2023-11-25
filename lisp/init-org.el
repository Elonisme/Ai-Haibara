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
  
  ;; use xelatex to produce chinese pdf in org mode
  (setq org-latex-pdf-process
	'("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
  )

(provide 'init-org)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org.el ends here
