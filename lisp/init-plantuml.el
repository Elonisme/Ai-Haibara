;;; init-plantuml.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package plantuml-mode
  :ensure t
  :config
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '((plantuml . t))))
  (setq org-plantuml-exec-mode 'plantuml)
  (setq org-plantuml-executable-path "plantuml")
  (setq plantuml-executable-path "plantuml")
  (setq plantuml-default-exec-mode 'executable)
  ;; set default babel header arguments
  (setq org-babel-default-header-args:plantuml
        '((:exports . "results")
          (:results . "file")
          ))
  )

(provide 'init-plantuml)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org-modern.el ends here
