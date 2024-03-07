;;; init-hugo.el -- init-hugo settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package ox-hugo
  :ensure t   ;Auto-install the package from Melpa
  :pin melpa  ;`package-archives' should already have ("melpa" . "https://melpa.org/packages/")
  :after ox
  :config
  (setq org-hugo-front-matter-format "toml")
  )

(provide 'init-hugo)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-hugo.el ends here
