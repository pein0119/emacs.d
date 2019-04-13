;;; ido的配置

;; Fix for the warnings
(defvar ido-cur-item nil)
(defvar ido-default-item nil)
(defvar ido-cur-list nil)
(defvar predicate nil)
(defvar inherit-input-method nil)

(setq ido-enable-flex-matching t    
	  ido-create-new-buffer 'always 
	  ido-use-filename-at-point 'guess 
	  ido-default-file-method 'selected-window
	  ido-default-buffer-method 'selected-window
	  ido-use-faces nil
	  )       

(ido-mode t)                
(ido-everywhere)            
(ido-ubiquitous-mode)       
(flx-ido-mode)

(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-vertical-show-count t)
(ido-vertical-mode)
