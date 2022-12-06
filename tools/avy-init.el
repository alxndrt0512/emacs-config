;;;; avy-init --- Avy config

;;; avy-init.el
;;; Commentary:

;; This file contains avy's config

;;; Code:

(use-package avy
  :ensure t
  :after hydra
  :bind ("C-j" . hydra-avy/body)
  :hydra
  (hydra-avy (:hint nil :exit t)
	     "
_c_: Go to Char _l_: Go to Line _w_ Go to Word _j_ Go to Char Timer"
	     ("c" avy-goto-char)
	     ("l" avy-goto-line)
	     ("w" avy-goto-word-1)
	     ("j" avy-goto-char-timer)
	     ))

(provide 'avy-init)
;;; avy-init.el ends here
