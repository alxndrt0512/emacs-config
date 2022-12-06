;;;; yasnippet-init --- yasnippet config 

;;; yasnippet-init.el
;;; Commentary:

;; This file contains config of yasnippet

;;; Code:

(use-package yasnippet
  :ensure t
  :after company
  :init
  (yas-global-mode 1)
  :hook
  (prog-mode . yas-minor-mode)
  :config
  (defun company-mode/backend-with-yas (backend)
    (if (and (listp backend) (member 'company-yasnippet backend))
	backend
      (append (if (consp backend) backend (list backend))
	      '(:with company-yasnippet))))
  (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
  (define-key yas-minor-mode-map [(tab)]        nil)
  (define-key yas-minor-mode-map (kbd "TAB")    nil)
  (define-key yas-minor-mode-map (kbd "<tab>")  nil)
  :bind
  (:map yas-minor-mode-map ("S-<tab>" . yas-expand))
  (:map yas-minor-mode-map ("<backtab>" . yas-expand))
  )

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(provide 'yasnippet-init)
;;; yasnippet-init.el ends here
