;;; 配置开发环境

;; 配置文件加载目录
(add-to-list 'load-path "~/.emacs.d/vendor")

;; 配置代码风格
(load "codestyle-settings.el")

;; 加载markdown的配置文件
(load "markdown-settings.el")

;; 配置Python开发环境
(load "python-settings.el")

;; 加载nginx的配置文件
(load "nginx-settings.el")

;; 加载php的配置文件
;;(load "php-settings.el")

;; 启用flychek
(global-flycheck-mode t)

;; 语法高亮
(global-font-lock-mode t)
