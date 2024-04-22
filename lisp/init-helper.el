;;; init-helper.el -- init-helper settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package helpful
  :ensure t
  :bind
  ;; 重新定向 C-h 开始的命令
  (([remap describe-function] . #'helpful-callable)
   ([remap describe-variable] . #'helpful-variable)
   ([remap describe-key] . #'helpful-key)
   ([remap describe-command] . #'helpful-command)
   ([remap describe-symbol] . #'helpful-symbol)
   ("C-h C-d" . #'helpful-at-point)
   ("C-h F" . #'helpful-function)))

(provide 'init-helper)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-helper.el ends here
