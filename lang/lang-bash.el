;;;; lang-bash --- Bash script config

;;; lang-bash.el
;;; Commentary:

;; This file contains config of bash script

;;; Code:

(add-hook 'sh-mode-hook #'lsp-deferred)

(provide 'lang-bash)
;;; lang-bash.el ends here
