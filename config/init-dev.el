;; 配置文件加载目录
(let ((default-directory "~/.emacs.d/lib/"))
  (normal-top-level-add-subdirs-to-load-path))

;; 设置编程风格
(require 'code-style-settings)

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

;; 安装 ascope，阅读代码
(require 'ascope)
