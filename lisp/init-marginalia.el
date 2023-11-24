;;; init-marginalia.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package marginalia
  :ensure t
  :hook (after-init . marginalia-mode)
  :custom
  (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil)))

(provide 'init-marginalia)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-marginalia.el ends here
