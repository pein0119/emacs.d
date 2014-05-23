;; 配置文件加载目录
(let ((default-directory "~/.emacs.d/vendor/"))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/vendor/")

;;无菜单栏
(menu-bar-mode 0)

;; 无工具栏
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; 无滚动条
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; 关闭启动画面
(setq inhibit-startup-message t)

;;显示行号
(global-linum-mode t)

;;设置emacs主题
(require 'molokai-theme-kit)
(load-theme 'monokai t)


;;显示列号
(column-number-mode t)

;;高亮当前编辑行和行号
(hlinum-activate)
;; (global-hl-line-mode t)

;;光标改变
(setq-default cursor-type 'bar) ; 设置光标为竖线 

;; 设置光标颜色为红色
(set-cursor-color "red")		

;;取消光标闪烁
;; (setq blink-cursor -1)
