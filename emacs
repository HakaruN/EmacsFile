(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(PACKAGE-selected-packages (quote (##)))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-Themes (Quote (MISTERIOSO)))
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages (quote (emojify use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Define and initialise package repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;vterm
(use-package vterm
  :ensure t)

;; use-package to simplify the config file
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)

;; Keyboard-centric user interface
(setq inhibit-startup-message t)
(tool-bar-mode -1);;remove tool bar
(menu-bar-mode -1);;remove menu bar
(scroll-bar-mode -1);;remove scroll bar

;;disable error bell
(setq ring-bell-function 'ignore)

;;stop making backup files
(setq make-backup-files nil) ; stop creating ~ files

(defalias 'yes-or-no-p 'y-or-n-p);;may yes or no promp y or n

;;use tabs not spaces
(setq-default indent-tabs-mode t)
;; Theme
;;(use-package exotica-theme
;;  :config (load-theme 'exotica t))  (use-package solarized-theme
;:config    (load-theme 'misterios t))

;;font
;;(set-frame-font "Garuda 10" nil t)

;;emoji support
(use-package emojify)

;;delete white space at end of line on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq-default truncate-lines t)
(global-display-line-numbers-mode)
