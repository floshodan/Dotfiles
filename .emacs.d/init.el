;; hide the Emacs Startup Message
(setq inhibit-startup-screen t)
;; hide menubars
(toggle-scroll-bar -1)
(tool-bar-mode -1)


;; package mananger
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;set up numbers (nlinum-relative)
(require 'nlinum-relative)
(nlinum-relative-setup-evil)                    ;; setup for evil
(add-hook 'prog-mode-hook 'nlinum-relative-mode)
(setq nlinum-relative-redisplay-delay 0)      ;; delay
(setq nlinum-relative-current-symbol ">")      ;; or "" for display current line number
(setq nlinum-relative-offset 0)
(setq nlinum-relative-on t)

;;set up powerline
(require 'powerline)
(powerline-center-evil-theme)

(require 'nlinum-relative)
(nlinum-relative mode)

;;load theme
(load-theme 'solarized-dark t)

;;activate evil-mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
