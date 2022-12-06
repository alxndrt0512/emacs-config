;;;; init --- Emacs config

;;; init.el
;;; Commentary:

;; This file bootstraps the configuration, which is divided into several files

;;; Code:

(let ((minver "28.0"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

(defconst *is-a-mac* (eq system-type 'darwin))

(let (sub-path-list '())
  (add-to-list 'sub-path-list "basic")
  (add-to-list 'sub-path-list "misc")
  (add-to-list 'sub-path-list "lang")
  (add-to-list 'sub-path-list "tools")
  (dolist (sub-path sub-path-list)
    (add-to-list 'load-path (expand-file-name sub-path user-emacs-directory))))

(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(setq custom-file (expand-file-name "basic/custom.el" user-emacs-directory))
(load custom-file)

(setq byte-compile-warnings '(cl-functions))

;; misc
(require 'keyring)
(require 'unset-key)
(require 'replace-key)
(require 'tabs)
(require 'comment)
(require 'cmd-arg)
;; repo
(require 'repo)
;; use-package
(require 'use-package-init)
;; basic
(require 'font)
(require 'disp)
(require 'input)
(require 'theme)
;; tools
(require 'whichkey-init)
(require 'vterm-init)
(require 'company-init)
(require 'hydra-init)
(require 'magit-init)
(require 'treemacs-init)
(require 'lsp-init)
(require 'dap-init)
(require 'flycheck-init)
(require 'avy-init)
(require 'ivy-init)
(require 'highlight-symbol-init)
(require 'undo-tree-init)
(require 'wrainbow-delimiter-init)
(require 'ace-window-init)
(require 'mwim-init)
(require 'astyle-init)
(require 'dirvish-init)
(require 'yasnippet-init)
;; lang
(require 'lang-c)
(require 'lang-cpp)
(require 'lang-rust)
(require 'lang-python)
(require 'lang-cmake)
(require 'lang-go)
(require 'lang-tex)
(require 'lang-markdown)
(require 'lang-bash)
(provide 'init)
;;; init.el ends here
