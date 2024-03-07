;;; init-wttrin.el -- init-wttrin settings -*- lexical-binding: t -*-
;;; Commentary:

(use-package wttrin
  :ensure t
  :config
  (setq wttrin-default-cities '("Beijing" "Chongqing"))
  (setq wttrin-default-accept-language '("Accept-Language" . "en-US"))
  (setq url-user-agent "curl")
  )

;;; Code:

(provide 'init-wttrin)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-wttrin.el ends here
