(require 'dired-x)

;; 递归的删除和复制目录
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(setq dired-auto-revert-buffer t
	  dired-listing-switches "-alh"  ; 显示对人友好的文件大小
	  )
