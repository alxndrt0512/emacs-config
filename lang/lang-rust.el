;;;; lang-rust --- Language Rust config

;;; lang-rust.el
;;; Commentary:

;; This file contains config about language Rust

;;; Code:

(defun rust-config()
  "config hook function of rust"
  (require 'dap-lldb)
  (custom-set-variables '(dap-lldb-debug-program '("/usr/bin/lldb-vscode"))
			'(dap-auto-configure-features '(sessions locals breakpoints expressions repl controls tooltip)))
  )
(use-package rust-mode
  :ensure t
  :hook
  (rust-mode . lsp-deferred)
  (rust-mode . rust-config)
  )
(provide 'lang-rust)
;;; lang-rust.el ends here
