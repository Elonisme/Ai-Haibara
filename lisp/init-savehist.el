;;; init-savehist.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :config
  ;; Allow commands in minibuffers, will affect `dired-do-dired-do-find-regexp-and-replace' command:
  (setq enable-recursive-minibuffers t)
  (setq history-length 1000)
  (setq savehist-additional-variables '(mark-ring
                                        global-mark-ring
                                        search-ring
                                        regexp-search-ring
                                        extended-command-history))
  (setq savehist-autosave-interval 300))

(provide 'init-savehist)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-savehist.el ends here
