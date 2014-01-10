;; 配置文件加载目录
(add-to-list 'load-path "~/.emacs.d/modules")

;; 设置编程风格
(require 'init-codestyle)

;; 语法高亮
(global-font-lock-mode t)

;; 安装 ascope，阅读代码
;; (require 'ascope)						

;; gdb多窗口调试
(setq gdb-many-windows t)
