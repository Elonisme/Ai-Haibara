;;; init-webjump.el -- init-webjump settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:
(use-package webjump
  :ensure t
  :bind ("C-c /" . webjump)
  :custom
  (webjump-sites '(
                   ;; Emacs.
                   ("Emacs Home Page" .
                    "www.gnu.org/software/emacs/emacs.html")
                   ("Savannah Emacs page" .
                    "savannah.gnu.org/projects/emacs")

                   ("ChatGpt" .
                    "chat.openai.com")

                   ;; Github
                   ("Github" .
                    [simple-query "github.com/Elonisme"
                                  "github.com/search?q=" ""])

                   ;; QQ Music
                   ("QQ Muisc" .
                    [simple-query "y.qq.com"
                                  "y.qq.com/n/ryqq/search?w=" "&t=song&remoteplace=txt.yqq.center"])

                   ;; Internet search engines.
                   ("DuckDuckGo" .
                    [simple-query "duckduckgo.com"
                                  "duckduckgo.com/?q=" ""])
                   ("Google" .
                    [simple-query "www.google.com"
                                  "www.google.com/search?q=" ""])
                   ("Wikipedia" .
                    [simple-query "wikipedia.org" "wikipedia.org/wiki/" ""]))))

(provide 'init-webjump)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-webjump.el ends here
