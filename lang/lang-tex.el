;;;; lang-tex --- tex config

;;; lang-tex.el
;;; Commentary:

;; This file contains config of tex

;;; Code:

(use-package lsp-latex
  :ensure t
  :hook
  (tex-mode . lsp-deferred)
  (latex-mode . lsp-deferred)
  (yatex-mode . lsp-deferred)
  (bibtex-mode . lsp-deferred))

(use-package auctex
  :ensure t)

(provide 'lang-tex)
;;; lang-tex.el ends here
