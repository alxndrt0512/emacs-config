;;;; lang-markdown --- markdown config

;;; lang-markdown.el
;;; Commentary:

;; This file contains config of markdown

;;; Code:

(use-package markdown-mode
  :ensure t
  :config
  (setq markdown-command "/usr/bin/pandoc")
  :hook
  (markdown-mode . lsp-deferred)
  )

(use-package markdown-preview-mode
  :ensure t
  )

(provide 'lang-markdown)
;;; lang-markdown.el ends here
