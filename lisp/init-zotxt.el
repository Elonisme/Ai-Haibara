;;; init-zotxt.el -- zotxt settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package zotxt
  :ensure t  
  :config
  (add-hook 'org-mode-hook 'org-zotxt-mode)
)


(provide 'init-zotxt)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-zotxt.el ends here
