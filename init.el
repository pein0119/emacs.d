(add-to-list 'load-path "~/.emacs.d/config")

;; 设置路径变量
(defvar current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))
(message "powering up... Be patient, Master %s!" current-user)

(defvar root-dir (file-name-directory load-file-name)
  "The root dir of emacs configuration.")

(defvar savefile-dir (expand-file-name "savefile" root-dir)
  "This folder stores all the automatically generated save/history-files.")

(unless (file-exists-p savefile-dir)
  (make-directory savefile-dir))


;; 经由网络安装软件包
(load "init-packages.el")		

(eval-after-load 'flycheck
  '(custom-set-variables
	'(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

;; 基础配置
(load "init-base.el")

;; 配置编辑器界面
(load "init-face.el")			

;; 添加一些收集的函数
(load "init-func.el")

;; 编辑优化
(load "init-misc.el")

;; 配置开发环境
(load "init-dev.el")

;; 配置快捷键
(load "init-kbd.el")
(put 'upcase-region 'disabled nil)
