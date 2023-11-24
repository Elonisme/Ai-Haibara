;;; early-init.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:


;; disable inhibit-starup
(setq inhibit-startup-message t)
;; disable tool-bar
(tool-bar-mode 0)
;; disable menu-bar
(menu-bar-mode 0)
;; disable scroll-bar
(scroll-bar-mode 0)
;; disable auto backup
(setq make-backup-files nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; early-init.el ends here
