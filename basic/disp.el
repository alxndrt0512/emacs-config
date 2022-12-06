;;;; disp --- basic display setting

;;; disp.el
;;; Commentary:

;; This file contains some misc display settings

;;; Code:

(add-hook 'prog-mode-hook #'show-paren-mode) ; 编程模式下，光标在括号上时高亮另一个括号

(column-number-mode t)                       ; 在 Mode line 上显示列号
(setq inhibit-startup-message t)             ; 关闭启动 Emacs 时的欢迎界面
(global-display-line-numbers-mode 1)         ; 在 Window 显示行号

(add-hook 'prog-mode-hook #'hs-minor-mode)   ; 编程模式下，可以折叠代码块

(when (display-graphic-p) (toggle-scroll-bar -1)) ; 图形界面时关闭滚动条
(tool-bar-mode -1)                           ; 关闭 Tool bar

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)


(provide 'disp)
;;; disp.el ends here
