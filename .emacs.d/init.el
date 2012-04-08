;;; init.el --- Where all the magic begins
;;
;; This is the first thing to get loaded.
;;
;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"

;; ------------------------------------------------------------
;; Package init
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; ------------------------------------------------------------
;; Auto install packages
(defvar my-packages '(starter-kit starter-kit-bindings starter-kit-eshell starter-kit-lisp starter-kit-ruby clojure-mode markdown-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; ------------------------------------------------------------
;; Key bindings
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

;; Font setting
(set-default-font "Monaco-13")

;; Misc settings
(display-time)
(menu-bar-mode t)
(tool-bar-mode -1)
(global-linum-mode t)
(setq linum-format " %d ")

;; Auto complete
(require 'auto-complete-config)
(ac-config-default)

;; ------------------------------------------------------------
;; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'tomorrow-night t)
;(load-theme 'zenburn t)
;(color-theme-kingsajz)

;; ------------------------------------------------------------
;; slime setting
(setq inferior-lisp-program "/Applications/ccl-1.7/dx86cl64")
(add-to-list 'load-path "~/.emacs.d/elpa/slime")
(require 'slime)
;(setq slime-net-coding-system 'utf-8-unix)
;(slime-setup '(slime-fancy))

;; 设置有用的个人信息
(setq user-full-name "akuma")
(setq user-mail-address "ihuangwj@gmail.com")
