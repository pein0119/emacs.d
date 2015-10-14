;; 添加文件加载路径
(add-to-list 'load-path "~/.emacs.d/config")

(defvar root-dir (file-name-directory load-file-name)
  "emacs配置的根目录")

(defvar savefile-dir (expand-file-name "savefile" root-dir)
  "这个文件夹存储emacs自动生成的文件")

(defvar backup-dir (expand-file-name "backup" savefile-dir)
  "存储emacs生成的备份文件")

;; 创建savefile文件夹
(unless (file-exists-p savefile-dir)
  (make-directory savefile-dir))

;; 创建备份文件夹
(unless (file-exists-p backup-dir)
  (make-directory backup-dir))


;;不使用emacs的默认配置
(setq inhibit-default-init t)

;; 配置环境变量
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))

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
