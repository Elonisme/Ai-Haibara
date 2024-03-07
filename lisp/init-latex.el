;;; init-latex.el -- latex settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package tex
  :ensure auctex
  :custom
  (TeX-parse-self t) ; 自动解析 tex 文件
  (TeX-PDF-mode t)
  (TeX-DVI-via-PDFTeX t)
  :config
  (setq-default TeX-master t) ; 默认询问主文件
  (setq TeX-source-correlate-mode t) ;; 编译后开启正反向搜索
  (setq TeX-source-correlate-method 'synctex) ;; 正反向搜索的执行方式
  (setq TeX-source-correlate-start-server t) ;; 不再询问是否开启服务器以执行反向搜索
  ;;;LaTeX config
  (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex -shell-escape --synctex=1%(mode)%' %t" TeX-run-TeX nil t))
  (add-to-list 'TeX-view-program-selection '(output-pdf "eaf"))
  ;;(add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex --synctex=1%(mode)%' %t" TeX-run-TeX nil t))
  (add-to-list 'TeX-view-program-list '("eaf" eaf-pdf-synctex-forward-view))
  (add-to-list 'TeX-view-program-selection '(output-pdf "eaf"))
  ) ; 加载LaTeX模式钩子

(provide 'init-latex)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-latex.el ends here
