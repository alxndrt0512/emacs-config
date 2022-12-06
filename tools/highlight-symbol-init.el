;;;; highlight-symbol-init --- highlight-symbol config

;;; highlight-symbol-init.el
;;; Commentary:

;; This config contains highlight-symbol config

;;; Code:

(use-package highlight-symbol
  :ensure t
  :init (highlight-symbol-mode)
  :bind ("<f3>" . highlight-symbol))

(provide 'highlight-symbol-init)
;;; highlight-symbol-init.el ends here
