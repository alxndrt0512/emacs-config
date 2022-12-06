;;;; input --- input settings

;;; input.el
;;; Commentary:

;; This file contains some basic input settings

;;; Code:

(electric-pair-mode t)                       ; 自动补全括号
(global-auto-revert-mode t)                  ; 当另一程序修改了文件时，让 Emacs 及时刷新 Buffer
(delete-selection-mode t)                    ; 选中文本后输入文本会替换文本

(setq x-select-enable-clipboard-manager nil)

(xterm-mouse-mode)
(mouse-wheel-mode)


(provide 'input)
;;; input.el ends here
