;; 编程的语言的格式设置

;;设置TAB宽度为4
(setq default-tab-width 4) 
(setq c-default-style "linux"
	  c-basic-offset 4)

;; 设置python的缩进
(setq python-indent-offset 4)

;; 回车后自动缩进
;; (eal-define-keys
;;  `(lisp-mode-map emacs-lisp-mode-map lisp-interaction-mode-map sh-mode-map
;;                  java-mode-map
;;                  ruby-mode-map c-mode-base-map tcl-mode-map org-mode-map
;;                  python-mode-map perl-mode-map)
;;  `(("RET" newline-and-indent)))

;; 设置自动缩进
(setq auto-indent-on-visit-file t) 
(setq auto-indent-assign-indent-level 4)
(setq untabify t)
(require 'auto-indent-mode)
(auto-indent-global-mode)
(autoload 'auto-indent-delete-char "auto-indent-mode" "" t)
(define-key global-map [remap delete-char] 'auto-indent-delete-char)
(autoload 'auto-indent-kill-line "auto-indent-mode" "" t)
(define-key global-map [remap kill-line] 'auto-indent-kill-line)

(provide 'code-style-settings)
