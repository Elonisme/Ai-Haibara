;;; init-typst.el -- typst settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package typst-mode
  :straight (:type git :host github :repo "Ziqi-Yang/typst-mode.el")
  )

;; (use-package websocket)

;; (use-package typst-preview
;;   :load-path "~/.emacs.d/typst-preview.el"
;;   :config
;;   (setq typst-preview-browser "default")
;;   (define-key typst-preview-mode-map (kbd "C-c C-j") 'typst-preview-send-position)
;;   )

;; (use-package typst-ts-mode
;;   :load-path "~/.emacs.d/typst-ts-mode.el"
;;   :custom
;;   (typst-ts-mode-watch-options "--open")
;;   (typst-ts-mode-enable-raw-blocks-highlight t)
;;   (typst-ts-mode-highlight-raw-blocks-at-startup t)
;;   )

(provide 'init-typst)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-typst.el ends here
