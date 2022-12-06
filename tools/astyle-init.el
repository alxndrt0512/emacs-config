;;;; astyle-init --- astyle config

;;; astyle-init.el
;;; Commentary:

;; This file contains config of astyle

;;; Code:

(use-package astyle
  :ensure t
  :bind
  ("C-c a" . astyle-buffer))

(provide 'astyle-init)
;;; astyle-init.el ends here
