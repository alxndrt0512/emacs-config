;;;; rainbow-delimiter-init --- rainbow-delimiter config

;;; wrainbow-delimiter-init.el
;;; Commentary:

;; This file contains config of rainbow-delimiter

;;; Code:

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'wrainbow-delimiter-init)
;;; wrainbow-delimiter-init.el ends here
