;;; 配置括号

;; 自动给你加上括号
(require 'autopair)
(autopair-global-mode)

;; 为配对括号着色
(require 'highlight-parentheses)
(setq hl-paren-colors '("red" "yellow" "cyan" "magenta" "green" "red"))
(add-hook 'prog-mode-hook 'highlight-parentheses-mode)

;;高亮显示匹配括号
(show-paren-mode)
