;;; init-theme.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:


(use-package nordic-night-theme
  :ensure t
)

(use-package tommyh-theme
  :ensure t
)

;; auto-theme-switch.el

(defvar auto-theme-switch-light-theme 'tommyh
  "The light theme to be used during the day.")

(defvar auto-theme-switch-dark-theme 'nordic-night
  "The dark theme to be used during the night.")

(defun auto-theme-switch-set-theme ()
  "Set the theme based on the time of day."
  (let ((current-hour (string-to-number (format-time-string "%H"))))
    (if (and (>= current-hour 6) (< current-hour 18))
        (load-theme auto-theme-switch-light-theme t)
      (load-theme auto-theme-switch-dark-theme t))))

;; Set the initial theme
(auto-theme-switch-set-theme)

;; Hook into the timer to check and switch theme every hour
(run-with-timer 0 3600 'auto-theme-switch-set-theme)



(provide 'init-theme)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-theme.el ends here
