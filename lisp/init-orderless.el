;; support Pinyin first character match for orderless, avy etc.
(use-package pinyinlib
  :ensure t)

;; orderless 是一种哲学思想
(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless partial-completion basic))
  (setq orderless-component-separator "[ &]") ; & is for company because space will break completion
  (setq completion-category-defaults nil)
  (setq completion-category-overrides nil)
  :config
  ;; make completion support pinyin, refer to
  ;; https://emacs-china.org/t/vertico/17913/2
  (defun completion--regex-pinyin (str)
    (orderless-regexp (pinyinlib-build-regexp-string str)))
  (add-to-list 'orderless-matching-styles 'completion--regex-pinyin)
  )


(provide 'init-orderless)
