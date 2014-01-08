(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/lib/site-lisps/")

;; 自动编译配置文件，加快emacs启动速度
;; (require 'auto-compile)
;; (auto-compile-on-load-mode 1)
;; (auto-compile-on-save-mode 1)

(load "init-base.el")
(load "init-face.el")			
(load "init-func.el")
;; (load "init-misc.el")
;; (load "init-dev.el")
(load "init-kbd.el")
