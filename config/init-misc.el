;; 配置文件加载目录
(let ((default-directory "~/.emacs.d/lib/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'eval-after-load)
(require 'ahei-misc)

;; 自动给你加上括号
(require 'autopair)
(autopair-global-mode)

;; 为配对括号着色
(require 'highlight-parentheses-settings)

;; 配置yasnippet
(require 'yasnippet-settings)

;; 配置auto-complete
(require 'auto-complete-settings)

;;高亮显示匹配括号
(show-paren-mode)

;;设置redo
(require 'redo+)

;;配置shell-pop
(require 'shell-pop)
(shell-pop-set-internal-mode "ansi-term")
(shell-pop-set-internal-mode-shell "/usr/bin/ipython")
(shell-pop-set-window-height 60) ;the number for the percentage of the selected window. if 100, shell-pop use the whole of selected window, not spliting.
(shell-pop-set-window-position "bottom") ;shell-pop-up position. You can choose "top" or "bottom". 

;;配置markdown-mode
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.MD\\'" . markdown-mode))

;;鼠标指针快速移动
;;安装ace-jump
(require 'ace-jump-mode-autoloads)

;;快速跳转到某一buffer
(require 'ace-jump-buffer-autoloads)

;;添加popwin,按C-g能让消息窗口消失
(require 'popwin-settings)

;; 安装expand-region
(require 'expand-region)

;; 安装quick-jump
(require 'quick-jump)

;; 安装key-chord
(require 'key-chord)
