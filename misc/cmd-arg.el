;;;; cmd-arg --- command line argument config

;;; cmd-arg.el
;;; Commentary:

;; This file contains config of command line argument

;;; Code:
(use-package dirvish
  :config (add-to-list 'command-switch-alist '("-dired" . 'dirvish))
  )

(provide 'cmd-arg)
;;; cmd-arg.el ends here
