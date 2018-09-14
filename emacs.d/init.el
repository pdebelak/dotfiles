;;; init.el --- customization entry point

;;; Commentary:

;; Some basic customization

;;; Code:

;; update exec-path
(add-to-list 'exec-path "/usr/local/bin")

;; Easier than M-x on the left hand
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; Turn off ui
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Some good defaults
(setq
 inhibit-startup-screen t
 create-lockfiles nil
 auto-save-default nil
 backup-inhibited t
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 sentence-end-double-space nil)

;; Use clipboard normally on linux
(unless (eq system-type 'darwin)
  (progn
    (setq select-enable-clipboard t)
    (setq interprogram-paste-function 'x-cut-buffer-or-selection-value)))

;; Better font size
(set-face-attribute 'default nil :height 140)

;; function to copy current filename
(defun copy-filename ()
  "Copies filename for current buffer to kill ring if a filename exists."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if filename
	(kill-new filename))))

;; delete trailing whitespace on save
(add-hook 'before-save-hook
          'delete-trailing-whitespace)

;; don't truncate lines in sqli buffers
(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

;; load secrets if they exist
(if (file-exists-p "~/.emacs.d/secrets.el")
    (load "~/.emacs.d/secrets"))

;; the package manager
(require 'package)
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(package-selected-packages
   (quote
    (color-theme-sanityinc-tomorrow restclient flycheck magit projectile auto-complete scala-mode use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; use ido
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
;; scala syntax highlighting
(use-package scala-mode
  :ensure t
  :interpreter
  ("scala" . scala-mode))
;; fuzzy find in project - C-c p f
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :config
  (setq projectile-use-git-grep t))
;; syntax checking
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
;; autocomplete
(use-package auto-complete
  :ensure t
  :init
  (ac-config-default))
;; better git integration
(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "C-c g") 'magit-status))
;; interactive http requests
(use-package restclient
  :ensure t)
;; tomorrow theme
(use-package color-theme-sanityinc-tomorrow
  :ensure t
  :config
  (load-theme 'sanityinc-tomorrow-day))

(defun start-sql-session ()
  "Start sql buffer and sqli session for given connection.
Loads connections from sql-connection-alist, if present.
Otherwise, does nothing."
  (interactive)
  (let ((available-sql-connections nil))
    (if (boundp 'sql-connection-alist)
	(dolist (conn sql-connection-alist available-sql-connections)
	  (push (symbol-name (car conn)) available-sql-connections)))
    (if available-sql-connections
	(let ((selected-connection (ido-completing-read "Open connection: " available-sql-connections)))
	  (switch-to-buffer (concat selected-connection ".sql"))
	  (sql-mode)
	  (sql-connect (make-symbol selected-connection)))
      (message "No connections available. Set them in sql-connection-alist."))))

;;; init.el ends here
