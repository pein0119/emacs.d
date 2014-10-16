;;; 键盘快捷键设置

;; align-regexp
(global-set-key (kbd "C-c a") 'align-regexp)

;; 窗口的切换,光标移到上下左右窗口
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-down)

;; 冲定义query-replace-regexp的快捷键
(global-set-key (kbd "C-c %") 'query-replace-regexp)

;; 复制当前文件名
(global-set-key (kbd "C-c c n") 'copy-file-name-to-clipboard)

;; 插入日期
(global-set-key (kbd "C-c i d") 'insert-date)

;; 特权模式编辑文件
(global-set-key (kbd "C-c s w") 'sudo-edit)

;; 交换两个窗口
(global-set-key (kbd "C-c s w") 'swap-windows)

;; 将当前缓冲区所有的tab替换为空格
(global-set-key (kbd "C-c u b") 'untabify-buffer)

;; 按下C-x k立即关闭掉当前的buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;; 跳到某一行
(global-set-key (kbd "C-x j") 'goto-line)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(add-hook 'ibuffer-mode-hook
          '(lambda ()
             (ibuffer-auto-mode 1)))

;; 删除当前缓冲区对应的文件
(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

;; 重命名当前缓冲区
(global-set-key (kbd "C-x C-r") 'rename-file-and-buffer)

;; 快速移动
;; 向下移动五行
(global-set-key (kbd "C-M-n")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))
;; 向上移动五行
(global-set-key (kbd "C-M-p")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))
;; 向前移动五行
(global-set-key (kbd "C-M-f")
                (lambda ()
                  (interactive)
                  (ignore-errors (forward-char 5))))
;; 向后移动五行
(global-set-key (kbd "C-M-b")
                (lambda ()
                  (interactive)
                  (ignore-errors (backward-char 5))))

;; 重定义C-h键，将其改为向前删除一个字符
(global-set-key (kbd "C-h") 'delete-backward-char)

;; 重定义M-h
(global-set-key (kbd "M-h") 'help-command)

;;代码注释的功能
(global-set-key (kbd "M-;") 'comment-dwim-line)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;;C-return 在当前行上新开一行
(global-set-key (kbd "<C-return>") 'open-line-below)
;;C-M-return 在当前行下新开一行
(global-set-key (kbd "<C-M-return>") 'open-line-above)

;; 将当前行向上，向下移动
(global-set-key (kbd "<M-down>") 'move-line-down)
(global-set-key (kbd "<M-up>") 'move-line-up)

;; eshell配置
(global-set-key (kbd "<f6>") 'open-eshell-other-buffer)
(global-set-key (kbd "C-<f6>") 'eshell)

;; neotree 的快捷键
(global-set-key [f8] 'neotree-toggle)

;; 设置emacs全屏的快捷键为f11
(global-set-key (kbd "<f11>") 'fullscreen-toggle) 

;; 下面是窗口的半透明效果的开启 
(global-set-key (kbd "<f12>") 'loop-alpha) 
