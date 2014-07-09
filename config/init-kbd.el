;;设置emacs全屏的快捷键为f11
(global-set-key [f11] 'fullscreen-toggle) 

;;下面是窗口的半透明效果的开启 
(global-set-key (kbd "<f12>") 'loop-alpha) 

;;设置sr-speedbar的快捷键
;;(global-set-key [(f7)] 'sr-speedbar-open)
;;(global-set-key [S-f7] 'sr-speedbar-close)

;; 'gdb'
(global-set-key [(f5)] 'gdb)

;;窗口的切换,光标移到上下左右窗口
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-down)

;; eshell配置
(global-set-key [(f6)] 'open-eshell-other-buffer)
(global-set-key [C-f6]'eshell)
(defun my-eshell-hook()
  (local-set-key "\C-l" 'my-eshell-clear-buffer))
(add-hook 'eshell-mode-hook 'my-eshell-hook)

;; 在行首 C-k 时，同时删除该行。
(setq-default kill-whole-line t)

;; 按下C-x k立即关闭掉当前的buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;;跳到某一行
(global-set-key (kbd "C-x j") 'goto-line)

;; 快速移动
;;向下移动五行，绑定到 C-S-n
(global-set-key (kbd "C-M-n")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))
;;向上移动五行
(global-set-key (kbd "C-M-p")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))
;;向前移动五行
(global-set-key (kbd "C-M-f")
                (lambda ()
                  (interactive)
                  (ignore-errors (forward-char 5))))
;;向后移动五行
(global-set-key (kbd "C-M-b")
                (lambda ()
                  (interactive)
                  (ignore-errors (backward-char 5))))

;;重定义C-h键，将其改为向前删除一个字符
(global-set-key (kbd "C-h") 'delete-backward-char)

;;重定义M-h
(global-set-key (kbd "M-h") 'help-command)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(add-hook 'ibuffer-mode-hook
          '(lambda ()
             (ibuffer-auto-mode 1)))

;;重命名当前缓冲区
(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)

;;将当前行向上，向下移动
(global-set-key (kbd "<M-down>") 'move-line-down)
(global-set-key (kbd "<M-up>") 'move-line-up)

;; 跳到匹配的括号
(global-set-key (kbd "C-]") 'goto-paren)

;;C-return 在当前行上新开一行
;;C-S-return 在当前行下新开一行
(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-M-return>") 'open-line-above)

;;代码注释的功能
(global-set-key (kbd "M-;") 'qiang-comment-dwim-line) 

;;shell-pop
;;(global-set-key [(f4)] 'shell-pop)

;;重做快捷键
(global-set-key (kbd "C-.") 'redo)

;;定义pylook的快捷键
;;(global-set-key [(f8)] 'pylookup-lookup);;搜索文档

;;ace-jump-mode 的快捷键
(key-chord-define-global "jj" 'ace-jump-mode)
(key-chord-define-global "jl" 'ace-jump-line-mode)
(key-chord-define-global "jk" 'ace-jump-buffer)

;; expand-region 快捷键
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-c w") 'er/mark-word)
(global-set-key (kbd "C-c m") 'er/mark-symbol)
(global-set-key (kbd "C-c i p") 'er/mark-inside-pairs)
(global-set-key (kbd "C-c o p") 'er/mark-outside-pairs)
(global-set-key (kbd "C-c i q") 'er/mark-inside-quotes)
(global-set-key (kbd "C-c o q") 'er/mark-outside-quotes)

;; redefine keybinding of 'query-replace-regexp
(global-set-key (kbd "C-c %") 'query-replace-regexp)

;; helm 快捷键
;; (global-set-key (kbd "C-x C-f") 'helm-find-files) 

;; quick-jump的快捷键
(global-set-key (kbd "C-c b") 'quick-jump-go-back)
(global-set-key (kbd "C-c f") 'quick-jump-go-forward)
(global-set-key (kbd "C-c ,") 'quick-jump-push-marker)
(global-set-key (kbd "C-c .") 'quick-jump-clear-all-marker)


;; 放大、缩小字体
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
