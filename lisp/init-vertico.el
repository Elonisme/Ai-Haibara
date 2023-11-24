;;; init-vertico.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package vertico
  :ensure t
  :hook (after-init . vertico-mode)
  :bind (:map minibuffer-local-map
              ("M-<DEL>" . my/minibuffer-backward-kill)
              :map vertico-map
              ("M-q" . vertico-quick-insert)) ; use C-g to exit
  :config
  (defun my/minibuffer-backward-kill (arg)
    "When minibuffer is completing a file name delete up to parent
folder, otherwise delete a word"
    (interactive "p")
    (if minibuffer-completing-file-name
        ;; Borrowed from https://github.com/raxod502/selectrum/issues/498#issuecomment-803283608
        (if (string-match-p "/." (minibuffer-contents))
            (zap-up-to-char (- arg) ?/)
          (delete-minibuffer-contents))
      (backward-kill-word arg)))

  ;; Do not allow the cursor in the minibuffer prompt
  (setq minibuffer-prompt-properties
        '(read-only t cursor-intangible t face minibuffer-prompt))
  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

  (setq vertico-cycle t)                ; cycle from last to first
  :custom
  (vertico-count 15)                    ; number of candidates to display, default is 10
  )

(provide 'init-vertico)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-vertico.el ends here
