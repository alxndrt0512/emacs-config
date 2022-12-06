;;;; theme --- theme config

;;; theme.el
;;; Commentary:

;; This file contains theme config

;;; Code:

;; (use-package spacemacs-theme
;;   :ensure t
;;   :init
;;   (load-theme 'spacemacs-dark t)
;;   :defer t
;;   )

(use-package solarized-theme
  :ensure t
  :init
  (load-theme 'solarized-dark t)
  :defer t
  )

(use-package powerline
  :ensure t
  :init
  (powerline-default-theme))

(set-frame-parameter (selected-frame) 'alpha '(90 . 50))
(add-to-list 'default-frame-alist '(alpha . (90 . 50)))

(provide 'theme)
;;; theme.el ends here
