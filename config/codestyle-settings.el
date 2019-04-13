;; 编程的语言的格式设置

;; 设置TAB宽度为4
(setq default-tab-width 4) 
(setq c-basic-offset 4)

;; 设置python的缩进
(setq python-indent-offset 4);; 回车后自动缩进

;; 自动缩进
(define-key global-map (kbd "RET") 'newline-and-indent)

;; 粘贴时自动缩进
(defun yank-and-indent ()
    "Yank and then indent the newly formed region according to mode."
    (interactive)
    (yank)
    (call-interactively 'indent-region))
(global-set-key "\C-y" 'yank-and-indent)

;; 删除换行符时自动连接两行
(defun kill-and-join-forward (&optional arg)
    (interactive "P")
    (if (and (eolp) (not (bolp)))
            (progn (forward-char 1)
                   (just-one-space 0)
                   (backward-char 1)
                   (kill-line arg))
        (kill-line arg)))
(global-set-key "\C-k" 'kill-and-join-forward)
