;;;; lang-cpp --- Language c++ config

;;; lang-cpp.el
;;; Commentary:

;; This file contains config about language c++

;;; Code:

;(require 'dap-gdb-lldb)
(defun cpp-config()
  "config hook function of cpp"
  (require 'dap-lldb)
  (custom-set-variables '(dap-lldb-debug-program '("/usr/bin/lldb-vscode"))
			'(dap-auto-configure-features '(sessions locals breakpoints expressions repl controls tooltip)))
  )
(add-hook 'c++-mode-hook #'lsp-deferred)
(add-hook 'c++-mode-hook #'cpp-config)

(use-package flycheck-clang-tidy
  :ensure t
  :after flycheck
  :hook
  (flycheck-mode . flycheck-clang-tidy-setup)
  )

(provide 'lang-cpp)
;;; lang-cpp.el ends here
