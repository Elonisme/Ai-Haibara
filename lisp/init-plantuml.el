;;; init-plantuml.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package plantuml-mode
  :ensure t
  :custom
  (plantuml-output-type "svg")
  (plantuml-default-exec-mode 'jar)
  (plantuml-jar-path "~/.emacs.d/plantuml.jar")
  (plantuml-executable-args '("-charset" "utf-8"))
  :config
  (add-to-list 'auto-mode-alist '("\\.puml\\'" . plantuml-mode))
  (add-hook 'org-babel-after-execute-hook 'org-toggle-inline-images)
)

(use-package ob-plantuml
  :ensure nil
  :config
  (require 'plantuml-mode)
  ;; WARNING: if variables are from other package, setq them at :config
  (setq org-plantuml-jar-path plantuml-jar-path)
  (setq org-plantuml-args plantuml-executable-args)
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml)))

(use-package image-mode
  :ensure nil
  :custom
  (image-auto-resize 'fit-window)
  :config
  (add-to-list 'auto-mode-alist '("\\.svg\\'" . image-mode)))

(use-package graphviz-dot-mode
  :ensure t
  :custom
  (graphviz-dot-preview-extension "svg"))

(provide 'init-plantuml)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org-modern.el ends here
