(require 'sr-speedbar)
 
(setq speedbar-frame-parameters
'((minibuffer)
(width . 40)
(border-width . 0)
(menu-bar-lines . 0)
(tool-bar-lines . 0)
(unsplittable . t)
(left-fringe . 0)))
(setq speedbar-hide-button-brackets-flag t)
(setq speedbar-show-unknown-files t)
(setq speedbar-smart-directory-expand-flag t)
(setq speedbar-use-images nil)
(setq sr-speedbar-auto-refresh nil)
(setq sr-speedbar-max-width 70)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width-console 40)
 
(when window-system
(defadvice sr-speedbar-open (after sr-speedbar-open-resize-frame activate)
(set-frame-width (selected-frame)
(+ (frame-width) sr-speedbar-width)))
(ad-enable-advice 'sr-speedbar-open 'after 'sr-speedbar-open-resize-frame)
 
(defadvice sr-speedbar-close (after sr-speedbar-close-resize-frame activate)
(sr-speedbar-recalculate-width)
(set-frame-width (selected-frame)
(- (frame-width) sr-speedbar-width)))
(ad-enable-advice 'sr-speedbar-close 'after 'sr-speedbar-close-resize-frame))

(setq speedbar-tag-hierarchy-method '(speedbar-simple-group-tag-hierarchy) ) 

(provide 'sr-speedbar-settings)
