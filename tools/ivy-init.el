;;;; ivy-init --- ivy config

;;; ivy-init.el
;;; Commentary:

;; This file contains config of ivy

;;; Code:

(use-package ivy
  :ensure t
;;  :requires (swiper counsel)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq search-default-mode #'char-fold-to-regexp)
  (setq ivy-count-format "(%d/%d) ")
  :bind
  (
   ("C-s" . 'swiper)
   ("C-x b" . 'ivy-switch-buffer)
   ("C-x f" . 'counsel-find-file)
   ("C-c C-r" . 'ivy-resume)
   ("M-x" . 'counsel-M-x)
  )
)

(use-package swiper
  :ensure t)

(use-package counsel
  :ensure t)

(provide 'ivy-init)
;;; ivy-init.el ends here
