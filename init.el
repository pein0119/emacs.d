;; 添加文件加载路径
(add-to-list 'load-path "~/.emacs.d/config")

;;不使用emacs的默认配置
(setq inhibit-default-init t)

;;; 加载自己的配置
;; 安装软件包
(load "init-package.el")
;; 基础配置
(load "init-base.el")
;; 配置界面
(load "init-ui.el")
;; 零散配置
(load "init-misc.el")
;; 添加一些收集的函数
(load "init-func.el")
;; 配置开发环境
(load "init-dev.el")
;; 配置快捷键
(load "init-kbd.el")
