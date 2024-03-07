;;; init-eaf.el -- init-eaf settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package eaf
  :load-path "~/emacs-application-framework"
  :defer t
  :config
  (require 'eaf-pdf-viewer)          ; 启用PDF阅读器
  )

(provide 'init-eaf)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-eaf.el ends here
