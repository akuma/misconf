;; 在 Windows 下使用需要添加的 HOME 设置
;(setenv "HOME" "D:/Documents/My_home")

;; 设置系统编码
(set-language-environment 'Chinese-GB)
;(set-buffer-file-coding-system 'utf-8)
;(set-default-coding-systems 'utf-8)

;; 关闭烦人的出错时的提示声
(setq visible-bell t)

;; 关闭起动时的那个“开机画面”
(setq inhibit-startup-message t)

;; 显示列号
(setq column-number-mode t)

;; 设置默认工作目录
(setq default-directory "~") 

;; 不要在鼠标点击的那个地方插入剪贴板内容
(setq mouse-yank-at-point t)

;; 用一个很大的 kill ring
(setq kill-ring-max 200)

;; 把 fill-column 设为 60. 这样的文字更好读
(setq default-fill-column 60)

;; 设置 Tab 的长度为4个字符
(setq-default tab-width 4)
;; 设置将Tab键插入制表符替换为等长度的空格
(setq-default indent-tabs-mode nil)

;; 设置 sentence-end 可以识别中文标点
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;; 可以递归的使用 minibuffer
(setq enable-recursive-minibuffers t)

;; 防止页面滚动时跳动
(setq scroll-margin 3
      scroll-conservatively 10000)

;; 把缺省的 major mode 设置为 text-mode
(setq default-major-mode 'text-mode)

;; 括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(mouse-avoidance-mode 'animate)

;; 在标题栏显示 buffer 的名字
(setq frame-title-format "emacs@%b")

;; 让 Emacs 可以直接打开和显示图片
(auto-image-file-mode)

;; 设置语法加亮
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
;(setq font-lock-support-mode 'lazy-lock-mode)

;; 把这些缺省禁用的功能打开
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; 设置一下备份时的版本控制，这样更加安全
(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1)

;; 设置有用的个人信息
(setq user-full-name "akuma")
(setq user-mail-address "ihuangwj@gmail.com")

;; 让 dired 可以递归的拷贝和删除目录
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;; 不要生成临时文件
(setq-default make-backup-files nil)

;; 显示时间
(display-time)

;; 启用小工具菜单栏
(tool-bar-mode -1)

;; 记录文件修改时间
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-format "%:u %02m/%02d/%04y %02H:%02M:%02S")

;; 设置颜色主题
(add-to-list 'load-path "D:/Program Files/emacs-23.1/lisp/color-theme")
(require 'color-theme)
(color-theme-initialize)
;(color-theme-kingsajz)
;(color-theme-robin-hood)
(color-theme-zenburn)

(fset 'yes-or-no-p 'y-or-n-p)
(column-number-mode t)
(transient-mark-mode t)
;(setq lazy-lock-defer-on-scrolling t)

;; 设置 Python mod
(autoload 'python-mode "python-mode" "Python Mode." t)
(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode) interpreter-mode-alist))
(add-hook 'python-mode-hook
          (lambda ()
            (set (make-variable-buffer-local 'beginning-of-defun-function)
                 'py-beginning-of-def-or-class)
            (setq outline-regexp "def\\|class ")))
