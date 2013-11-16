;; 配置文件加载目录
(let ((default-directory "~/.emacs.d/lib/"))
  (normal-top-level-add-subdirs-to-load-path))

;;先设置缩进
;;设置TAB宽度为4
(setq default-tab-width 4) 
(setq c-default-style "linux"
	  c-basic-offset 4)

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

;; '配置gdb'
(require 'gud-settings)

;; install ascope
(require 'ascope)

;; 按装helm-gtags
(require 'helm-config)
(require 'helm-gtags)

(add-hook 'helm-gtags-mode-hook
		  '(lambda ()
			 (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
			 (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
			 (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
			 (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)
			 (local-set-key (kbd "C-c C-f") 'helm-gtags-find-files)))
