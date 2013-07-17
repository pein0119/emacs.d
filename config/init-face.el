(add-to-list 'load-path "~/.emacs.d/lib/site-lisps/")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/")
(add-to-list 'load-path "~/.emacs.d/lib/themes/")

;;设置emacs最大化
(require 'fullscreen)

;;显示行号
(global-linum-mode t)

;;设置emacs主题
(require 'cyberpunk)
(color-theme-cyberpunk)

;;设置模式栏
;;显示时间
(display-time-mode t)
;;显示列号
(column-number-mode t)

;;高亮当前编辑行
(global-hl-line-mode t)
