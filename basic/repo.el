;;;; repo --- repo config

;;; repo.el
;;; Commentary:

;; This file contains repo config

;;; Code:

(require 'package)

;(setq package-archives '(("gnu"   . "https://elpa.gnu.org/packages/")
;                         ("melpa" . "https://melpa.org/packages/")))
(setq package-archives '(("gnu"   . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")))
;(setq package-check-signature nil)
(package-initialize)

(provide 'repo)
;;; repo.el ends here
