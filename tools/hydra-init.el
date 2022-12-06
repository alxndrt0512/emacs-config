;;;; hydra-init --- Hydra package config

;;; hydra-init.el
;;; Commentary:

;; This file contains config of hydra

;;; Code:

(use-package hydra
  :ensure t)

(use-package use-package-hydra
  :ensure t
  :after hydra)

(provide 'hydra-init)
;;; hydra-init.el ends here
