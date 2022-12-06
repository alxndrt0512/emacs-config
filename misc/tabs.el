;;;; tabs --- tabs config

;;; tabs.el
;;; Commentary:

;; This file contains config of tabs

;;; Code:

(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-offset 'substatement-open 0)))

(provide 'tabs)
;;; tabs.el ends here
