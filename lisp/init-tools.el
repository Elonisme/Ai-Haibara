;;; init-tools.el -- init-tools settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(defun count-chinese-characters (start end)
  "Count the number of Chinese characters in the region from START to END."
  (interactive "r")
  (let ((count 0))
    (save-excursion
      (goto-char start)
      (while (and (< (point) end) (re-search-forward "[\u4e00-\u9fff]" end t))
        (setq count (1+ count))))
    (message "中文字符数: %d" count)))

(global-set-key (kbd "C-c C-w") 'count-chinese-characters)


(provide 'init-tools)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-tools.el ends here
