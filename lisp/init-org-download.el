;;; init-org-download.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; offering paste img in org mode
(use-package org-download
  :ensure t
  :defer t ;; 延迟加载
  :bind
  (:map org-mode-map
        ("C-M-y" . org-download-clipboard)) ;; 绑定从剪贴版粘贴截图的快捷键
  :custom
  (org-download-heading-lvl 1) ;; 用一级标题给截图文件命名
  :config
  (setq-default org-download-image-dir "./img")) ;; 用同级 ./img 目录放置截图文件
(add-hook 'dired-mode-hook 'org-download-enable)

(provide 'init-org-download)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org-download.el ends here
