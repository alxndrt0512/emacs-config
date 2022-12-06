;;;; lang-go --- Language go config

;;; lang-go.el
;;; Commentary:

;; This file contains config of language go

;;; Code:

(use-package go-mode
  :ensure t
  :hook
  (go-mode . lsp-deferred))

(provide 'lang-go)
;;; lang-go.el ends here
