;; 配置文件加载目录
(add-to-list 'load-path "~/.emacs.d/modules/")

;; 引入prelude关于ido的配置
(require 'init-ido)

;; 配置括号
(require 'init-paren)

;; 配置yasnippet
(require 'init-yasnippet)

;; 配置auto-complete
(require 'init-autocomplete)

;;设置redo
(require 'redo+)

;; ;;配置shell-pop
;; (require 'shell-pop)
;; (shell-pop-set-internal-mode "ansi-term")
;; (shell-pop-set-internal-mode-shell "/usr/bin/ipython")
;; (shell-pop-set-window-height 60) ;the number for the percentage of the selected window. if 100, shell-pop use the whole of selected window, not spliting.
;; (shell-pop-set-window-position "bottom") ;shell-pop-up position. You can choose "top" or "bottom". 

;;鼠标指针快速移动
;;安装ace-jump
(require 'ace-jump-mode)

;;快速跳转到某一buffer
(require 'ace-jump-buffer)

;; ;;添加popwin,按C-g能让消息窗口消失
(require 'init-popwin)

;; 安装expand-region
(require 'expand-region)

;; 安装quick-jump
(require 'quick-jump)

;; 安装key-chord
(require 'key-chord)
(key-chord-mode +1)

;; 安装neotree,显示文件目录
(require 'neotree)

;; 安装helm
(require 'helm-config)
(helm-mode 1)

;; 启用which-func-mode
;; Show the current function name in the header line
(which-function-mode)
(setq-default header-line-format
              '((which-func-mode ("" which-func-format " "))))
(setq mode-line-misc-info
	  ;; We remove Which Function Mode from the mode line, because it's mostly
	  ;; invisible here anyway.
	  (assq-delete-all 'which-func-mode mode-line-misc-info))
