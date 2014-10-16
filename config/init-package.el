;;; 软件包管理

;; 加载最新的字节码
(setq load-prefer-newer t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

;; 定义需要安装的软件包列表
(defconst required-packages
  '(
    ;;; 颜色主题
    monokai-theme						; 非常漂亮的水果色主题
    ;;; 增强UI功能
    anzu                                ; isearch的状态栏显示
    browse-kill-ring                    ; Kill ring 浏览
    smex                                ; 增强 M-x
    hlinum				                ; 高亮行号
    ;;; 文件浏览工具
    ido-ubiquitous                      ; 在每个地方都使用ido
    flx-ido                             ; 增强的ido模糊搜索
    ido-vertical-mode                   ; 垂直显示ido选项
    ace-jump-mode                       ; 在buffer间快速跳转
    neotree 				            ; 文件浏览
    ;;; 编辑功能
    expand-region                       ; 根据语法单元增加选中区域
	key-chord							; 快捷键
    multiple-cursors                    ; 多游标编辑
    ;;; 搜索替换
    ag                                  ; 代码搜索
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
    ;; js
    js2-mode          
    ;; Python
    elpy				                ; 配置Python IDE
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
