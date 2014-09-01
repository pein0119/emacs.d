;; 配置文件加载目录
(add-to-list 'load-path "~/.emacs.d/modules")

;; 修改iedit下的快捷键
;; (defun my-iedit-hook ()
;;   (local-set-key (kbd "C-h") 'delete-backward-char)
;;   (local-set-key (kbd "M-h") 'help-command)
;;   )
;; (add-hook 'iedit-mode-hook 'my-iedit-hook)

;; python 的IDE环境
(elpy-enable)

;; 设置编程风格
(require 'init-codestyle)

;; 安装fleck
(require-package 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; 语法高亮
(global-font-lock-mode t)

;; 安装 ascope，阅读代码
;; (require 'ascope)						

;; gdb多窗口调试
(setq gdb-many-windows t)

;; 编辑nginx配置文件
(require 'nginx-mode)
