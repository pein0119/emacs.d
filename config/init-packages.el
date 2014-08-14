;; 安装配置文件依赖软件包

(require 'cl)
(require 'package)

;;配置emacs安装包的软件源
(when (>= emacs-major-version 24)
	(require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
)

;; 设置软件包安装路径
(setq package-user-dir (expand-file-name "elpa" root-dir))
(package-initialize)

;; 需要安装的软件包列表
(defvar my-packages
  '(
    ace-jump-mode
    ace-jump-buffer
    auto-complete
	ascope
    expand-region
	elpy
    flx-ido 
	flycheck-pos-tip
    highlight-parentheses
    hlinum
    ido-ubiquitous 
    key-chord
    markdown-mode
	monokai-theme
	php-mode
    popwin
    redo+
    smex
    yasnippet
    )
  "A list of packages to ensure are installed at launch.")

;; 检查软件包是否已经都被安装
(defun packages-installed-p ()
  "Check if all packages in `my-packages' are installed."
  (every #'package-installed-p my-packages))

;; 安装该软件包，除非该软件包已经安装
(defun require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package my-packages)
    (add-to-list 'my-packages package))
  (unless (package-installed-p package)
    (package-install package)))

;; 保证每个软件包都已经被安装
(defun require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'require-package packages))

(define-obsolete-function-alias 'ensure-module-deps 'require-packages)

(defun install-packages ()
  "Install all packages listed in `my-packages'."
  (unless (packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Emacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (require-packages my-packages)))

;; 安装软件包
(install-packages)

(defun list-foreign-packages ()
  "Browse third-party packages not bundled with Prelude.

Behaves similarly to `package-list-packages', but shows only the packages that
are installed and are not in `prelude-packages'.  Useful for
removing unwanted packages."
  (interactive)
  (package-show-package-list
   (set-difference package-activated-list my-packages)))

(defmacro auto-install (extension package mode)
  "When file with EXTENSION is opened triggers auto-install of PACKAGE.
PACKAGE is installed only if not already present.  The file is opened in MODE."
  `(add-to-list 'auto-mode-alist
                `(,extension . (lambda ()
                                 (unless (package-installed-p ',package)
                                   (package-install ',package))
                                 (,mode)))))

(defvar auto-install-alist
  '(("\\.clj\\'" clojure-mode clojure-mode)
    ("\\.coffee\\'" coffee-mode coffee-mode)
    ("\\.css\\'" css-mode css-mode)
    ("\\.csv\\'" csv-mode csv-mode)
    ("\\.d\\'" d-mode d-mode)
    ("\\.dart\\'" dart-mode dart-mode)
    ("\\.erl\\'" erlang erlang-mode)
    ("\\.feature\\'" feature-mode feature-mode)
    ("\\.go\\'" go-mode go-mode)
    ("\\.groovy\\'" groovy-mode groovy-mode)
    ("\\.haml\\'" haml-mode haml-mode)
    ("\\.hs\\'" haskell-mode haskell-mode)
    ("\\.latex\\'" auctex LaTeX-mode)
    ("\\.less\\'" less-css-mode less-css-mode)
    ("\\.lua\\'" lua-mode lua-mode)
    ("\\.markdown\\'" markdown-mode markdown-mode)
    ("\\.md\\'" markdown-mode markdown-mode)
    ("\\.ml\\'" tuareg tuareg-mode)
    ("\\.pp\\'" puppet-mode puppet-mode)
    ("\\.php\\'" php-mode php-mode)
    ("PKGBUILD\\'" pkgbuild-mode pkgbuild-mode)
    ("\\.sass\\'" sass-mode sass-mode)
    ("\\.scala\\'" scala-mode2 scala-mode)
    ("\\.scss\\'" scss-mode scss-mode)
    ("\\.slim\\'" slim-mode slim-mode)
    ("\\.textile\\'" textile-mode textile-mode)
    ("\\.yml\\'" yaml-mode yaml-mode)))

;; 人工添加markdown-mode的自动加载
(when (package-installed-p 'markdown-mode)
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.MD\\'" . markdown-mode)))

  ;; 建立自动加载映射
(mapc
 (lambda (entry)
   (let ((extension (car entry))
         (package (cadr entry))
         (mode (cadr (cdr entry))))
     (unless (package-installed-p package)
       (auto-install extension package mode))))
 auto-install-alist)

(provide 'init-packages)
