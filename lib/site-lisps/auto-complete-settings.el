(require 'popup)
(require 'fuzzy)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(ac-flyspell-workaround)
(add-to-list 'ac-dictionary-directories (concat  "~/.emacs.d/lib/auto-complete/dict"))
(global-auto-complete-mode t)
(setq ac-auto-show-menu t)
(setq ac-dwim t)
(setq ac-use-menu-map t)
(setq ac-quick-help-delay .5)
(setq ac-quick-help-height 60)
(setq ac-disable-inline t)
(setq ac-show-menu-immediately-on-auto-complete t)
(setq ac-auto-start 2)
(setq ac-candidate-menu-min 0)

(set-default 'ac-sources
             '(ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-semantic
               ac-source-yasnippet))

(dolist (mode '(magit-log-edit-mode log-edit-mode org-mode text-mode haml-mode
                sass-mode yaml-mode csv-mode espresso-mode haskell-mode
                html-mode nxml-mode sh-mode smarty-mode clojure-mode
                lisp-mode textile-mode markdown-mode tuareg-mode))
  (add-to-list 'ac-modes mode))

;; 不让回车的时候执行`ac-complete', 因为当你输入完一个
;; 单词的时候, 很有可能补全菜单还在, 这时候你要回车的话,
;; 必须要干掉补全菜单, 很麻烦, 用M-j来执行`ac-complete'
(eal-define-keys
 'ac-complete-mode-map
 `(("<return>"   nil)
   ("RET"        nil)
   ("M-j"        ac-complete)))
(define-key ac-completing-map (kbd "M-n") 'ac-next)
(define-key ac-completing-map (kbd "M-p") 'ac-previous)
(define-key ac-completing-map (kbd "M-RET") 'ac-help)
(define-key ac-completing-map "\r" 'nil)

(provide 'auto-complete-settings)
































