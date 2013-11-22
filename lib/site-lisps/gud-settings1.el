;; -*- Emacs-Lisp -*-

;; Time-stamp: <2010-04-10 18:01:52 Saturday by ahei>

;;gdb-UI配置
(setq gdb-many-windows t)

(global-set-key (kbd "C-c b") 'gud-break)
(global-set-key (kbd "C-c B") 'gud-remove)
(global-set-key (kbd "M-s") 'view)
(global-set-key (kbd "M-m") 'comint-previous-matching-input)
(global-set-key (kbd "C-c r") 'gud-run)
(global-set-key (kbd "C-c f") 'gud-finish)
(global-set-key (kbd "M-j") 'gud-next)
(global-set-key (kbd "M-k") 'gud-step)
(global-set-key (kbd "M-c") 'gud-cont)



;; 退出gdb的时候关闭gdb对应的buffer
(add-hook 'gdb-mode-hook 'kill-buffer-when-shell-command-exit)

;; 显示gdb的鼠标提示
(gud-tooltip-mode 1)

(provide 'gud-settings)
