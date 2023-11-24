;; 图片默认宽度
(setq org-image-actual-width '(400))

;;; 为写笔记提供便利
;; 使用xelatex，配合当前org文件最开始的配置来正常输出中文
(setq org-latex-pdf-process
      '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))



(provide 'init-org)
