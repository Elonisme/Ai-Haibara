;;; init-translate.el -- init-translate settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package go-translate
  :ensure t
  :config
  (setq gt-langs '(en zh))
  (setq gt-default-translator
      (gt-translator
       :taker (gt-taker :langs '(en zh) :text 'word :prompt t)
       :engines (list (gt-youdao-dict-engine)
                      (gt-youdao-suggest-engine))
       :render (gt-buffer-render)))
  )

(provide 'init-translate)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-translate.el ends here
