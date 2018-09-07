;; update exec-path
(add-to-list 'exec-path "/usr/local/bin")

;; Use C-w to kill backwords word
(global-set-key "\C-w" 'backward-kill-word)

;; Since C-w was used, bind C-x C-k to kill-region
(global-set-key "\C-x\C-k" 'kill-region)

;; Easier than M-x on the left hand
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; Turn off ui
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Disable backup files
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Some good defaults
(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 show-paren-delay 0.5
 use-package-always-ensure t
 sentence-end-double-space nil)

;; Use clipboard normally on linux
(unless (eq system-type 'darwin)
  (progn
    (setq x-select-enable-clipboard t)
    (setq interprogram-paste-function 'x-cut-buffer-or-selection-value)))

;; Color scheme
(load-theme 'leuven)
;; Better font size
(set-face-attribute 'default nil :height 140)

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
 '(package-selected-packages
   (quote
    (projectile auto-complete w3m emacs-w3m helm-projectile helm scala-mode use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; scala syntax highlighting
(use-package scala-mode
  :interpreter
  ("scala" . scala-mode))
;; fuzzy find in project - C-c p h
(use-package helm-projectile)
(use-package projectile)
(projectile-mode +1)
;; browser in emacs, ignore errors on systems without w3m binary installed
(ignore-errors (use-package w3m))
;; autocomplete
(use-package auto-complete)
(ac-config-default)
