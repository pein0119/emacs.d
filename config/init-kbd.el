;;设置emacs全屏的快捷键为f11
(global-set-key [f11] 'fullscreen-toggle)

;;设置sr-speedbar的快捷键
(global-set-key [(f7)] 'sr-speedbar-open)
(global-set-key [S-f7] 'sr-speedbar-close)

;; 'gdb'
(global-set-key [(f5)] 'gdb)

;;窗口的切换,光标移到上下左右窗口
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-down)

;;对eshell的一些配置
;;目的是开一个shell的小buffer，用于更方便地测试程序(也就是运行程序了)，我经常会用到。
;;ctrl-[f6] 在当前窗口打开eshell,[f6]分割窗口打开eshell, ctrl-l清屏
(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  ;;(split-window-vertically)
  (split-window-horizontally)
  (eshell))
(defun my-eshell-clear-buffer ()
  "Eshell clear buffer."
  (interactive)
  (let ((eshell-buffer-maximum-lines 0))
    (eshell-truncate-buffer)))
(global-set-key [(f6)] 'open-eshell-other-buffer)
(global-set-key [C-f6]'eshell)
;; (global-set-key [S-f6] 'my-eshell-clear-buffer)
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
(global-set-key "\M-;" 'qiang-comment-dwim-line) 

;;shell-pop
(global-set-key [(f4)] 'shell-pop)

;;重做快捷键
(global-set-key (kbd "C-.") 'redo)

;;定义pylook的快捷键
(global-set-key [(f8)] 'pylookup-lookup);;搜索文档

;;ace-jump-mode 的快捷键
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x b") 'ace-jump-buffer)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

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
