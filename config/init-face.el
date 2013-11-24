;; 配置文件加载目录
(let ((default-directory "~/.emacs.d/lib/"))
  (normal-top-level-add-subdirs-to-load-path))

;;设置emacs最大化
(require 'fullscreen)

;;显示行号
(global-linum-mode t)

;;设置emacs主题
(setq molokai-theme-kit t)
(require 'molokai-theme)

;;显示列号
(column-number-mode t)

;;高亮当前编辑行和行号
(require 'hlinum-autoloads)
(hlinum-activate)
(global-hl-line-mode t)

;;添加tabbar，类似于浏览器的标签页
;;设置我的emacs分组


;; (defun my-tabbar-buffer-groups () ;; customize to show all normal files in one group
;;    (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
;;                ((eq major-mode 'dired-mode) "emacs")
;;                (t "user"))))
;; (setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

;; (require 'tabbar)
;; (tabbar-mode t)
;;  ;; Add a buffer modification state indicator in the tab label, and place a
;;  ;; space around the label to make it looks less crowd.
;;  (defadvice tabbar-buffer-tab-label (after fixup_tab_label_space_and_flag activate)
;;    (setq ad-return-value
;;          (if (and (buffer-modified-p (tabbar-tab-value tab))
;;                   (buffer-file-name (tabbar-tab-value tab)))
;;              (concat " + " (concat ad-return-value " "))
;;            (concat " " (concat ad-return-value " ")))))

;;  ;; Called each time the modification state of the buffer changed.
;;  (defun ztl-modification-state-change ()
;;    (tabbar-set-template tabbar-current-tabset nil)
;;    (tabbar-display-update))

;;  ;; First-change-hook is called BEFORE the change is made.
;;  (defun ztl-on-buffer-modification ()
;;    (set-buffer-modified-p t)
;;    (ztl-modification-state-change))
;;  (add-hook 'after-save-hook 'ztl-modification-state-change)

;;  ;; This doesn't work for revert, I don't know.
;;  ;;(add-hook 'after-revert-hook 'ztl-modification-state-change)
;;  (add-hook 'first-change-hook 'ztl-on-buffer-modification)

;;     (dolist (func '(tabbar-mode tabbar-forward-tab tabbar-forward-group tabbar-backward-tab tabbar-backward-group))
;;       (autoload func "tabbar" "Tabs at the top of buffers and easy control-tab navigation"))

;; (defmacro defun-prefix-alt (name on-no-prefix on-prefix &optional do-always)
;;       `(defun ,name (arg)
;;          (interactive "P")
;;          ,do-always
;;          (if (equal nil arg)
;;              ,on-no-prefix
;;            ,on-prefix)))

;; (defun-prefix-alt shk-tabbar-next (tabbar-forward-tab) (tabbar-forward-group) (tabbar-mode 1))
;;     (defun-prefix-alt shk-tabbar-prev (tabbar-backward-tab) (tabbar-backward-group) (tabbar-mode 1))

;; (global-set-key [(control tab)] 'shk-tabbar-next)
;; (global-set-key [(control shift tab)] 'shk-tabbar-prev)

;;光标改变
(setq-default cursor-type 'bar) ; 设置光标为竖线 

;; 设置光标颜色为红色
(set-cursor-color "red")		

(require 'sr-speedbar-settings)
