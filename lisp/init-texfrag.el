;;; init-texfrag.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; show math function in org mode
(use-package texfrag
  :ensure t
  :hook (org-mode . texfrag-mode)
  :config
  (setq texfrag-extensions '("pdf"))
  (setq texfrag-dpi 900))


(provide 'init-texfrag)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-texfrag.el ends here
