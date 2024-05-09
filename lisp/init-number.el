;;; init-number.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; open display-line-numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'LaTeX-mode-hook 'display-line-numbers-mode)

(provide 'init-number)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;  init-number.el ends here
