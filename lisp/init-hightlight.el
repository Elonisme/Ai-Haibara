;;; init-hightlight.el -- init-hightlight settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:
(use-package hl-line
  :ensure t
  :hook (after-init . global-hl-line-mode)
  )

(use-package hideshow
  :ensure t
  :diminish hs-minor-mode
  :hook (prog-mode . hs-minor-mode))


(use-package newcomment
  :ensure nil
  :bind ([remap comment-dwim] . #'comment-or-uncomment)
  :config
  (defun comment-or-uncomment ()
    (interactive)
    (if (region-active-p)
        (comment-or-uncomment-region (region-beginning) (region-end))
      (if (save-excursion
            (beginning-of-line)
            (looking-at "\\s-*$"))
          (call-interactively 'comment-dwim)
        (comment-or-uncomment-region (line-beginning-position) (line-end-position)))))
  :custom
  (comment-auto-fill-only-comments t))

(use-package isearch
  :ensure nil
  :bind (:map isearch-mode-map
         ([remap isearch-delete-char] . isearch-del-char))
  :custom
  (isearch-lazy-count t)
  (lazy-count-prefix-format "%s/%s ")
  (lazy-highlight-cleanup nil))

(use-package winner-mode
  :ensure nil
  :hook (after-init . winner-mode))


(provide 'init-hightlight)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-hightlight.el ends here
