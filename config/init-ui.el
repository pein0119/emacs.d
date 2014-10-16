;;; 配置emacs UI

;; 在fringe上显示一个小箭头指示当前buffer的边界
(setq-default indicate-buffer-boundaries 'left)

;;标题栏显示文件路径
(setq frame-title-format
'("%S" (buffer-file-name "%f"
(dired-directory dired-directory "%b"))))

;;无菜单栏
(menu-bar-mode 0)

;; 无工具栏
(if (fboundp 'tool-bar-mode) (tool-bar-mode 0))

;; 无滚动条
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode 0))

;; 关闭启动画面
(setq inhibit-startup-message t)

;; 显示行号
(global-linum-mode t)

;; 高亮当前编辑行和行号
(hlinum-activate)

;; 设置行号显示格式
(setq linum-format "%4d ")

;;设置emacs主题
(load-theme 'monokai t)

;;光标改变,设置光标为竖线 
(setq-default cursor-type 'bar)

;; 设置光标颜色为红色
(set-cursor-color "red")
