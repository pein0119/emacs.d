;;; 比较零散的配置

;; 配置文件加载目录
(add-to-list 'load-path "~/.emacs.d/vendor/")

;; ido的配置
(load "ido-settings.el")

;; 增强的M-x功能
(load "smex-settings.el")

;; 启用which-func-mode
(which-function-mode)
(setq-default header-line-format
              '((which-func-mode ("" which-func-format " "))))
(setq mode-line-misc-info
	  ;; We remove Which Function Mode from the mode line, because it's mostly
	  ;; invisible here anyway.
	  (assq-delete-all 'which-func-mode mode-line-misc-info))


