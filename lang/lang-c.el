;;;; lang-c --- C Language config

;;; lang-c.el
;;; Commentary:

;; This file contains config about C

;;; Code:

(defun c-config()
  "config hook function of cpp"
(require 'dap-lldb)
(custom-set-variables '(dap-lldb-debug-program '("/usr/bin/lldb-vscode"))
		      '(dap-auto-configure-features '(sessions locals breakpoints expressions repl controls tooltip)))
(require 'dap-cpptools)
)
(add-hook 'c-mode-hook #'lsp-deferred)
(add-hook 'c-mode-hook #'c-config)

(use-package flycheck-clang-tidy
  :ensure t
  :after flycheck
  :hook
  (flycheck-mode . flycheck-clang-tidy-setup)
  )

(provide 'lang-c)
;;; lang-c.el ends here
