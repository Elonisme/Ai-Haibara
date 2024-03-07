;;; init-dashbord.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;;; setting Dashboard
(use-package dashboard
  :ensure t
  :init
  (progn
    ;; Set the title
    (setq dashboard-banner-logo-title "コードネーム?シェリー")
    ;; Set the banner
    (setq dashboard-startup-banner "~/.emacs.d/logo.png")
    ;; Content is not centered by default. To center, set
    (setq dashboard-center-content t)
    (setq dashboard-display-icons-p t) ;; display icons on both GUI and terminal
    (setq dashboard-icon-type 'nerd-icons) ;; use `nerd-icons' package
    (setq dashboard-set-heading-icons t)
    (setq dashboard-set-file-icons t)

    ;; Define the copyright function
    (defun my-dashboard-insert-copyright ()
      "Insert copyright in the footer."
      (when dashboard-set-footer
        (dashboard-insert-center
         (propertize (format "\n♥️ Powered by Elon Li, %s\n" (format-time-string "%Y"))
                     'face 'font-lock-comment-face))))
    ;; Add the copyright function as advice to dashboard-insert-footer
    (advice-add #'dashboard-insert-footer :after #'my-dashboard-insert-copyright)
    )
  :config
  (dashboard-setup-startup-hook)

  ;; Customize the dashboard items
  (setq dashboard-items '((recents . 6)
                          (bookmarks . 6)
                          ))
  (add-hook 'dashboard-mode-hook #'which-key-mode)
  )


(provide 'init-dashboard)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-dashboard.el ends here
