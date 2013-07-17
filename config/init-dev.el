(add-to-list 'load-path "~/.emacs.d/lib/site-lisps/")
(add-to-list 'load-path "~/.emacs.d/lib/yasnippet/")
(add-to-list 'load-path "~/.emacs.d/lib/parentheses/")
(add-to-list 'load-path "~/.emacs.d/lib/auto-complete/")
(add-to-list 'load-path "~/.emacs.d/lib/pylookup/")
(add-to-list 'load-path "~/.emacs.d/lib/pyflakes/")
(add-to-list 'load-path "~/.emacs.d/lib/flymake-easy/")
(add-to-list 'load-path "~/.emacs.d/lib/flymake-cursor/")
(add-to-list 'load-path "~/.emacs.d/lib/ace-jump-buffer/")
(add-to-list 'load-path "~/.emacs.d/lib/ace-jump-mode/")

(require 'eval-after-load)
(require 'ahei-misc)

;;设置redo
(require 'redo+)

;; 所有关于括号的配置
(require 'all-paren-settings)

;; 自动给你加上括号
(require 'autopair-settings)

;; 所有的自动补全的配置
(require 'all-auto-complete-settings)
(setq-default global-auto-complete-mode t)

;;先设置缩进
;;设置TAB宽度为4
(setq default-tab-width 4) 
;;以下设置缩进
;;用tab缩进
(setq c-indent-level 4)
(setq c-continued-statement-offset 4)
(setq c-brace-offset -4)
(setq c-argdecl-indent 4)
(setq c-label-offset -4)
(setq c-basic-offset 4)
;; 回车后indent
(eal-define-keys
 `(lisp-mode-map emacs-lisp-mode-map lisp-interaction-mode-map sh-mode-map
                 java-mode-map
                 ruby-mode-map c-mode-base-map tcl-mode-map org-mode-map
                 python-mode-map perl-mode-map)
 `(("RET" newline-and-indent)))

;; 语法高亮
(global-font-lock-mode t)

;;代码折叠
(require 'hs-minor-mode-settings)

;; doxygen
(require 'doxymacs-settings)

;; 动态检查语法错误
(require 'flymake-settings)

;;配置shell-pop
(require 'shell-pop)
(shell-pop-set-internal-mode "ansi-term")
(shell-pop-set-internal-mode-shell "/usr/bin/ipython")
(shell-pop-set-window-height 60) ;the number for the percentage of the selected window. if 100, shell-pop use the whole of selected window, not spliting.
(shell-pop-set-window-position "bottom") ;shell-pop-up position. You can choose "top" or "bottom". 

;;配置markdown-mode
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;配置shell脚本的开发环境
(require 'sh-mode-settings)

;;对org模式的配置
(require 'org-settings)

;;配置python开发环境

;;安装pylook
;; add pylookup to your loadpath, ex) ~/.emacs.d/pylookup
(setq pylookup-dir "~/.emacs.d/lib/pylookup")
(add-to-list 'load-path pylookup-dir)

;; load pylookup when compile time
(eval-when-compile (require 'pylookup))

;; set executable file and db file
(setq pylookup-program (concat pylookup-dir "/pylookup.py"))
(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))

;; set search option if you want
(setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))

;; to speedup, just load it on demand
(autoload 'pylookup-lookup "pylookup"
  "Lookup SEARCH-TERM in the Python HTML indexes." t)

(autoload 'pylookup-update "pylookup" 
  "Run pylookup-update and create the database at `pylookup-db-file'." t)

;;开启python的flymake，检查错误
(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;;在minibuffer显示错误
(require 'flymake-cursor-autoloads)

;; `gdb'
(require 'gud-settings)

;;鼠标指针快速移动
;;安装ace-jump
(require 'ace-jump-mode-autoloads)

;;快速跳转到某一buffer
(require 'ace-jump-buffer-autoloads)

