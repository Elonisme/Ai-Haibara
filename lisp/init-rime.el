;;; init-rime.el --- rime config -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package rime
  :ensure t
  :custom
  (default-input-method "rime")
  (rime-show-candidate 'popup)
  )

(provide 'init-rime)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-rime.el ends here
