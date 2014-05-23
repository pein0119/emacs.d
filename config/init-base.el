;;设置个人信息
(setq user-full-name "pein")
(setq user-mail-address "pein0119@gmail.com")

;; 将垃圾回收的阈值设置为50M
(setq gc-cons-threshold 50000000)

;;设置默认工作目录
(setq default-directory "~/workspace/") 

;;M-X 输入命令时有提示
(icomplete-mode t)

;;打开文件时有提示
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length 0)
(setq ido-use-virtual-buffers t)

;; buffer在外部改动时，自动刷新buffer
(global-auto-revert-mode 1)

;; Emacs找不到合适的模式时，缺省使用text-mode
(setq default-major-mode 'text-mode)

;; 在fringe上显示一个小箭头指示当前buffer的边界
(setq-default indicate-buffer-boundaries 'left)

;; 尽快显示按键序列
(setq echo-keystrokes 0.01)

(setq system-time-locale "C")

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;; 不要总是没完没了的问yes or no, 为什么不能用y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 可以递归的使用minibuffer
(setq enable-recursive-minibuffers t)

;; 当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;; 可以保存你上次光标所在的位置
(require 'saveplace)
(setq save-place-file (expand-file-name "saveplace" savefile-dir))
(setq-default save-place t)

;; 将“备份”和“自动保存”文件存储在/tmp文件夹中
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
;; (setq auto-save-list-file "~/.emacs.d/savefile/auto-save-list")

;; 保存部分历史
(require 'savehist)
(setq savehist-additional-variables
      ;; search entries
      '(search ring regexp-search-ring)
      ;; save every minute
      savehist-autosave-interval 60
      ;; keep the home clean
      savehist-file (expand-file-name "savehist" savefile-dir))
(savehist-mode +1)

;; 保存最近打开的文件
(require 'recentf)
(setq recentf-save-file (expand-file-name "recentf" savefile-dir)
      recentf-max-saved-items 500
      recentf-max-menu-items 15)
(recentf-mode +1)

;; eshell文件保存路径
(setq eshell-directory-name (expand-file-name "eshell" savefile-dir))

;; 书签保存路径
(require 'bookmark)
(setq bookmark-default-file (expand-file-name "bookmarks" savefile-dir)
      bookmark-save-flag 1)

;; semanticdb保存路径
(setq semanticdb-default-save-directory
      (expand-file-name "semanticdb" savefile-dir))

;; 递归的删除和复制目录
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(require 'dired-x)

;; 光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(mouse-avoidance-mode 'animate)

;; 不保存连续的重复的kill
(setq kill-do-not-save-duplicates t)

;; 先格式化再补全
(setq tab-always-indent 'complete)

;; 默认80列
(setq-default fill-column 80)

;; time-stamp, 在文件头记录修改时间, 并动态更新
(setq time-stamp-format "%04y-%02m-%02d %02H:%02M:%02S %:a by %u")
(add-hook 'write-file-hooks 'time-stamp)

;; 不要闪烁光标, 烦不烦啊
(blink-cursor-mode -1)

;; 自动刷新缓冲区
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;;标题栏显示文件路径
(setq frame-title-format
'("%S" (buffer-file-name "%f"
(dired-directory dired-directory "%b"))))

;; 设置默认编码
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; 不忽略大小写
(setq read-file-name-completion-ignore-case nil)
