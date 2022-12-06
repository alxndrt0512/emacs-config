;;;; use-package-init --- use-package init

;;; use-package-init.el
;;; Commentary:

;; This file make use-package works

;;; Code:

(if (not (package-installed-p 'use-package))
      (package-install 'use-package))

(provide 'use-package-init)
;;; use-package-init.el ends here
