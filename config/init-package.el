;;; 软件包管理

;; 加载最新的字节码
(setq load-prefer-newer t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))
;;(package-refresh-contents)

(package-initialize)

;; 定义需要安装的软件包列表
(defconst required-packages
  '(
	;;; 文件管理
    ;;; 颜色主题
	monokai-theme						; 非常漂亮的水果色主题
    ;;; 增强UI功能
	anzu                                ; isearch的状态栏显示
    browse-kill-ring                    ; Kill ring 浏览
    smex                                ; 增强 M-x
    hlinum				                ; 高亮行号
	popwin								; 关闭弹出缓冲区
	powerline							; 状态栏
    ;;; 文件浏览工具
	ace-jump-mode                       ; 在buffer间快速跳转
	dired+
	flx-ido                             ; 增强的ido模糊搜索
    ido-ubiquitous                      ; 在每个地方都使用ido
    ido-vertical-mode                   ; 垂直显示ido选项
    neotree 				            ; 文件浏览
	;; 代码阅读
	xcscope								; cscope的emacs前端
    ;;; 编辑功能
	autopair							; 自动添加括号
	ace-jump-mode						; 快速跳动某一字符
    ace-jump-buffer						; 快速跳到某一缓冲区
    expand-region                       ; 根据语法单元增加选中区域
	highlight-parentheses				; 为配对的括号配色
	key-chord							; 快捷键
    multiple-cursors                    ; 多游标编辑
	undo-tree							; 撤销、重做
    ;;; 搜索替换
	ack									; 代码查找
    ;;; 自动补全和代码片段
    auto-complete			            ; 自动补全
    yasnippet				            ; 插入代码片段
    ;;; 标记语言
    markdown-mode   			        ; marddown语言
    ;;; 配置语言
    nginx-mode				            ; 编辑nginx配置文件
    ;;; 开发环境
    flycheck							; 代码错误检测
    ;; php
    php-mode				            ; php模式
	;; lua
	lua-mode							; lua模式
    ;; js
    js2-mode          
    ;; Python
    elpy				                ; 配置Python IDE
	;; go
	go-mode								; go模式
	;; other
	exec-path-from-shell				; 配置环境变量
    )
)

(defun ensure-packages ()
  "安装软件包"
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package required-packages)
    (unless (package-installed-p package)
      (package-install package))))

(ensure-packages)
