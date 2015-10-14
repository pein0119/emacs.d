;;; 比较零散的配置

;; 配置文件加载目录
(add-to-list 'load-path "~/.emacs.d/vendor/")

;; ido的配置
(load "ido-settings.el")

;; 增强的M-x功能
(load "smex-settings.el")

;; 关于括号的配置
(load "paren-settings.el")

;; 配置 yasnippet
(load "yasnippet-settings.el")

;; 配置 auto-complete
(load "autocomplete-settings.el")
;; 配置gocode
(load "go-autocomplete.el")

;; 配置 popwin
(load "popwin-settings.el")

;; 启用keychord
(key-chord-mode t)

;; 启用which-func-mode
(which-function-mode)
(setq-default header-line-format
              '((which-func-mode ("" which-func-format " "))))
(setq mode-line-misc-info
	  ;; We remove Which Function Mode from the mode line, because it's mostly
	  ;; invisible here anyway.
	  (assq-delete-all 'which-func-mode mode-line-misc-info))

;; 配置xcscope，浏览代码
(require 'xcscope)
(cscope-setup)

;; 配置redo undo
(require 'undo-tree)
(global-undo-tree-mode 1)


;; 状态栏显示搜索匹配次数
(global-anzu-mode +1)

(set-face-attribute 'anzu-mode-line nil
                    :foreground "yellow" :weight 'bold)

(custom-set-variables
 '(anzu-mode-lighter "")
 '(anzu-deactivate-region t)
 '(anzu-search-threshold 1000)
 '(anzu-replace-to-string-separator " => "))

;; 状态栏
(require 'powerline)
(powerline-default-theme)
