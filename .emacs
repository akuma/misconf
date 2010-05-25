;; �� Windows ��ʹ����Ҫ��ӵ� HOME ����
;(setenv "HOME" "D:/Documents/My_home")

;; ����ϵͳ����
(set-language-environment 'Chinese-GB)
;(set-buffer-file-coding-system 'utf-8)
;(set-default-coding-systems 'utf-8)

;; �رշ��˵ĳ���ʱ����ʾ��
(setq visible-bell t)

;; �ر���ʱ���Ǹ����������桱
(setq inhibit-startup-message t)

;; ��ʾ�к�
(setq column-number-mode t)

;; ����Ĭ�Ϲ���Ŀ¼
(setq default-directory "~") 

;; ��Ҫ����������Ǹ��ط��������������
(setq mouse-yank-at-point t)

;; ��һ���ܴ�� kill ring
(setq kill-ring-max 200)

;; �� fill-column ��Ϊ 60. ���������ָ��ö�
(setq default-fill-column 60)

;; ���� TAB �ַ��� indent
(setq standard-indent 4)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())
;(loop for x downfrom 40 to 1 do
;;      (setq tab-stop-list (cons (* x 4) tab-stop-list))) 

;; ���� sentence-end ����ʶ�����ı��
(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;; ���Եݹ��ʹ�� minibuffer
(setq enable-recursive-minibuffers t)

;; ��ֹҳ�����ʱ����
(setq scroll-margin 3
      scroll-conservatively 10000)

;; ��ȱʡ�� major mode ����Ϊ text-mode
(setq default-major-mode 'text-mode)

;; ����ƥ��ʱ��ʾ����һ�ߵ����ţ������Ƿ��˵�������һ������
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; ��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס����
(mouse-avoidance-mode 'animate)

;; �ڱ�������ʾ buffer ������
(setq frame-title-format "emacs@%b")

;; �� Emacs ����ֱ�Ӵ򿪺���ʾͼƬ
(auto-image-file-mode)

;; �����﷨����
(global-font-lock-mode t)

;; ����Щȱʡ���õĹ��ܴ�
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; ����һ�±���ʱ�İ汾���ƣ��������Ӱ�ȫ
(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1)

;; �������õĸ�����Ϣ
(setq user-full-name "akuma")
(setq user-mail-address "ihuangwj@gmail.com")

;; �� dired ���Եݹ�Ŀ�����ɾ��Ŀ¼
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;; ��Ҫ������ʱ�ļ�
(setq-default make-backup-files nil)

;; ��ʾʱ��
(display-time)

;; ����С���߲˵���
(tool-bar-mode -1)

;; ��¼�ļ��޸�ʱ��
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-format "%:u %02m/%02d/%04y %02H:%02M:%02S")

;; ������ɫ����
(add-to-list 'load-path "D:/Program Files/emacs-23.1/lisp/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-kingsajz)
;(color-theme-robin-hood)
;(color-theme-gnome2)

(fset 'yes-or-no-p 'y-or-n-p)
(column-number-mode t)
(transient-mark-mode t)
;(setq lazy-lock-defer-on-scrolling t)
;(setq font-lock-support-mode 'lazy-lock-mode)
;(setq font-lock-maximum-decoration t)
