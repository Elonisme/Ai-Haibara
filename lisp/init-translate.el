(use-package go-translate
  :ensure t
  :config
  (setq gts-translate-list '(("en" "zh")))

  (setq gts-default-translator
        (gts-translator
         :picker (gts-prompt-picker)
         :engines (list (gts-bing-engine) (gts-google-engine))
         :render (gts-buffer-render)))
  
  (defun gts-translate-in-cursor ()
  (interactive)
  (gts-translate (gts-translator
                  :picker (gts-noprompt-picker)
                  :engines (gts-bing-engine)
                  :render (gts-buffer-render))))
  (global-set-key (kbd "C-c t") 'gts-translate-in-cursor)
  )

(provide 'init-translate)
