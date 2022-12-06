;;;; company-init --- company config

;;; company-init.el
;;; Commentary:

;; This file contains the config of company

;;; Code:

(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-backends '(
			   (company-capf company-dabbrev company-dabbrev-other-buffers)
			   (company-keywords)
			   (company-files)
			   ))
  (setq company-minimum-prefix-length 1) ; 只需敲 1 个字母就开始进行自动补全
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-show-numbers t) ;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence))
  )

(provide 'company-init)
;;; company-init.el ends here
