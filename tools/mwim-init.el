;;;; mwim-init --- mwim config

;;; mwim-init.el
;;; Commentary:

;; This file contains config of mwim

;;; Code:

(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

(provide 'mwim-init)
;;; mwim-init.el ends here
