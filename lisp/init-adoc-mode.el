(use-package adoc-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
  :custom-face
  (adoc-title-0-face ((t (:height 1.0 :weight bold))))
  )

(provide 'init-adoc-mode)
