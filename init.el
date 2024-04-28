;;; init.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:
;; set straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))



;; Initialize the package management system early
(package-initialize)

;; setting mirror site
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))




;; loading lisp directory
(let ((dir (locate-user-emacs-file "lisp")))
  (add-to-list 'load-path (file-name-as-directory dir)))


;; loading other packages
;; not showing meassgae in`*message*' buffer
(with-temp-message ""
  (require 'init-base)
  (require 'init-proxy)
  (require 'init-which-key)
  (require 'init-pixel-scroll)
  (require 'init-number)
  (require 'init-pair)
  (require 'init-package)
  (require 'init-theme)
  (require 'init-dashboard)
  (require 'init-nerd-icons)
  (require 'init-all-the-icons)
  (require 'init-org)
  (require 'init-org-contrib)
  (require 'init-org-modern)
  (require 'init-org-roam)
  (require 'init-latex)
  (require 'init-org-download)
  (require 'init-plantuml)
  (require 'init-fragtog)
  (require 'init-cdlatex)
  (require 'init-vertico)
  (require 'init-orderless)
  (require 'init-marginalia)
  (require 'init-yasnippet)
  (require 'init-lsp-bridge)
  (require 'init-savehist)
  (require 'init-zotxt)
  (require 'init-rime)
  (require 'init-translate)
  (require 'init-hugo)
  (require 'init-org-capture)
  (require 'init-wttrin)
  (require 'init-auto-save)
  (require 'init-quick-run)
  (require 'init-helper)
  (require 'init-keycast)
  (require 'init-hightlight)
  (require 'init-delsel)
  (require 'init-webjump)
  (require 'init-write)
  (require 'init-orgai)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command-style
   '(("" "%(PDF)%(latex) %(file-line-error) %(extraopts) %(output-dir) %S%(PDFout)")))
 '(TeX-command "tex")
 '(TeX-command-list
   '(("PDFLaTeX" "%`pdflatex -shell-escape --synctex=1%(mode)%' %t" TeX-run-TeX nil t)
     ("LuaLaTeX" "%`lualatex -shell-escape --synctex=1%(mode)%' %t" TeX-run-TeX nil t)
     ("XeLaTex" "%`xelatex -shell-escape --synctex=1%(mode)%' %t" TeX-run-TeX nil t)
     ("TeX" "%(PDF)%(tex) %(file-line-error) %`%(extraopts) %S%(PDFout)%(mode)%' %(output-dir) %t" TeX-run-TeX nil
      (plain-TeX-mode Texinfo-mode AmSTeX-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %T" TeX-run-TeX nil
      (LaTeX-mode docTeX-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %(o-dir) %t" TeX-run-compile nil
      (Texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) %(o-dir) --html %t" TeX-run-compile nil
      (Texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "amstex %(PDFout) %`%(extraopts) %S%(mode)%' %(output-dir) %t" TeX-run-TeX nil
      (AmSTeX-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (ConTeXt-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (ConTeXt-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %(O?aux)" TeX-run-BibTeX nil
      (plain-TeX-mode LaTeX-mode docTeX-mode ConTeXt-mode Texinfo-mode AmSTeX-mode)
      :help "Run BibTeX")
     ("Biber" "biber %(output-dir) %s" TeX-run-Biber nil
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Run Biber")
     ("Texindex" "texindex %s.??" TeX-run-command nil
      (Texinfo-mode)
      :help "Run Texindex")
     ("Texi2dvi" "%(PDF)texi2dvi %t" TeX-run-command nil
      (Texinfo-mode)
      :help "Run Texi2dvi or Texi2pdf")
     ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Generate PostScript file")
     ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Convert DVI file to PostScript")
     ("Dvipdfmx" "dvipdfmx -o %(O?pdf) %d" TeX-run-dvipdfmx nil
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Convert DVI file to PDF with dvipdfmx")
     ("Ps2pdf" "ps2pdf %f %(O?pdf)" TeX-run-ps2pdf nil
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Convert PostScript file to PDF")
     ("Glossaries" "makeglossaries %(d-dir) %s" TeX-run-command nil
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Run makeglossaries to create glossary file")
     ("Index" "makeindex %(O?idx)" TeX-run-index nil
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Run makeindex to create index file")
     ("upMendex" "upmendex %(O?idx)" TeX-run-index t
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Run upmendex to create index file")
     ("Xindy" "texindy %s" TeX-run-command nil
      (plain-TeX-mode LaTeX-mode docTeX-mode Texinfo-mode AmSTeX-mode)
      :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (LaTeX-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (LaTeX-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command")))
 '(TeX-engine 'xetex)
 '(custom-safe-themes
   '("04aa1c3ccaee1cc2b93b246c6fbcd597f7e6832a97aaeac7e5891e6863236f9f" "6fc9e40b4375d9d8d0d9521505849ab4d04220ed470db0b78b700230da0a86c1" "b11edd2e0f97a0a7d5e66a9b82091b44431401ac394478beb44389cf54e6db28" "6bdc4e5f585bb4a500ea38f563ecf126570b9ab3be0598bdf607034bb07a8875" "76ddb2e196c6ba8f380c23d169cf2c8f561fd2013ad54b987c516d3cabc00216" "27eb4bbd908683d344af2a0b90d71698938ab9af1656b1aed87e68258ef8c980" "7c7026a406042e060bce2b56c77d715c3a4e608c31579d336cb825b09e60e827" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
