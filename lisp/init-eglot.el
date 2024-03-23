;;; init-eglot.el -- init-eglot settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; (use-package company
;;   :ensure t
;;   :hook ((LaTeX-mode . enable-company-mode)
;;          (LaTeX-mode . disable-company-mode))
;;   :functions (enable-company-mode disable-company-mode)
;;   :config
;;   (setq company-minimum-prefix-length 1) ;; 只需敲 1 个字母就开始进行自动补全
;;   (setq company-tooltip-align-annotations t)
;;   (setq company-idle-delay 0.0)
;;   (setq company-show-numbers t) ;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
;;   (setq company-selection-wrap-around t)
;;   (setq company-transformers '(company-sort-by-occurrence)) ;; 根据选择的频率进行排序，读者如果不喜欢可以去掉  
;;   )

;; (use-package company-box
;;   :ensure t
;;   :hook (company-mode . company-box-mode)
;;   :config
;;   ;; 设置补全列表的背景颜色
;;   (setq company-box-background-color "#282c34")
;;   ;; 设置补全列表的边框样式
;;   (setq company-box-border-color "#61afef")
;;   ;; 设置补全项的图标
;;   (setq company-box-icons-alist 'company-box-icons-all-the-icons)
;;   )
  

;; (defun enable-company-mode ()
;;   "Enable company mode in LaTeX mode."
;;   (company-mode 1))

;; (defun disable-company-mode ()
;;   "Disable company mode when leaving LaTeX mode."
;;   (company-mode -1))


;; (use-package eglot
;;   :ensure t
;;   :config
;;   (add-to-list 'eglot-server-programs '(latex-mode . ("texlab")))
;;   :hook
;;   ((LaTeX-mode . eglot-ensure))
;; )

(provide 'init-eglot)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-eglot.el ends here
