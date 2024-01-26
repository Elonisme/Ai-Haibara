(use-package go-translate
  :ensure t
  :config
  (setq gts-translate-list '(("en" "zh")))

  (setq gts-default-translator
        (gts-translator
         :picker (gts-prompt-picker)
         :engines (list (gts-bing-engine) (gts-google-engine))
         :render (gts-buffer-render)))
  )

(provide 'init-translate)
