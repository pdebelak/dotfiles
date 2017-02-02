(defun find-file-smart-helm ()
  (interactive)
  (if (projectile-project-p)
	(helm-projectile-find-file)
        (helm-find-files 1)))

(use-package helm
  :ensure t :bind (("M-x" . helm-M-x)
		   ("C-x g C-f" . helm-find-files)))

(use-package helm-projectile
  :ensure t)

(global-set-key (kbd "C-x C-f") 'find-file-smart-helm)

(helm-mode 1)
(helm-projectile-on)
