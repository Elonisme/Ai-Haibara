;;; init-yasnippet.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; yasnippet settings
(use-package yasnippet
  :ensure t
  :hook ((prog-mode . yas-minor-mode)
	       (org-mode . yas-minor-mode)
         (LaTeX-mode . yas-minor-mode))
  :init
  :config
  (progn
    (setq hippie-expand-try-functions-list
	        '(yas/hippie-try-expand
	          try-complete-file-name-partially
	          try-expand-all-abbrevs
	          try-expand-dabbrev
	          try-expand-dabbrev-all-buffers
	          try-expand-dabbrev-from-kill
	          try-complete-lisp-symbol-partially
	          try-complete-lisp-symbol))))



(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(provide 'init-yasnippet)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-yasnippet.el ends here
