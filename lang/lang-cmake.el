;;;; lang-cmake --- CMake config

;;; lang-cmake.el
;;; Commentary:

;; This file contains CMake config

;;; Code:

(use-package cmake-mode
  :ensure t
  :hook
  (cmake-mode . lsp-deferred)
  )

(provide 'lang-cmake)
;;; lang-cmake.el ends here
