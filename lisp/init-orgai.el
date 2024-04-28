;;; init-orgai.el -- init-orgai settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(package-install 'websocket)
(add-to-list 'load-path "path/to/org-ai")
(require 'org)
(require 'org-ai)
(add-hook 'org-mode-hook #'org-ai-mode)
(org-ai-global-mode)
(setq org-ai-default-chat-model "gpt-3.5-turbo") ; if you are on the gpt-4 beta:
(org-ai-install-yasnippets) ; if you are using yasnippet and want `ai` snippets

(provide 'init-orgai)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-orgai.el ends here
