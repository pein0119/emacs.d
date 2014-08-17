emacs.d
=======
我的emacs配置文件(GNU emacs24.3),吸收prelude emacs的配置，从elpa安装软件包。
加快了emacs的启动速度

# 适用语言 #

* c/c++
* php
* python

# 文件组织 #

## init.el ##

功能：加载各个配置文件

## config ##
存放主要的配置文件

## modules ##
零散的配置

## vendor ##
存放不能经由elpa安装的软件包

# 快捷键 #
*C指的是ctrl键，M指的是alt键，S指的是shift键*
* C-x C-r **重命名前缓冲区**
* C-x C-k **删除当前缓冲区对应的文件**
* C-w **未选中区域时，剪切当前行**
* M-w **未选中区域时，复制当前行**
* C-] **跳到匹配的括号**
* C-c e **调用hs-minor-mode折叠当前代码块**
* C-c s **调用hs-minor-mode展开当前代码块**
* C-c E **调用hs-minor-mode折叠所有代码块**
* C-c S **调用hs-minor-mode展开所有代码块**
* C-c h **光标移到左部窗口**
* C-c l **光标移到右部窗口**
* C-c k **光标移到上部窗口**
* C-c j **光标移到下部窗口**
* C-c b **quick-jump-go-back**
* C-c f **quick-jump-go-forward**
* C-c , **quick-jump-push-marker**
* C-c / **quick-jump-clear-all-marker**
* f4 **弹出ipython**
* f5 **gdb调试功能**
* f6 **平分窗口，启动eshell**
* C-f6 **在当前窗口启动eshell**
* C-l **在eshell中的作用是清屏**
* f7 **开启speedbar**
* S-f7 **隐藏speedbar**
* f8 **开启/隐藏 neotree**
* f11 **全屏**
* C-k **光标在行首时，删除当前行**
* C-x k **关闭当前缓冲区**
* C-x j **跳到指定的行**
* C-M-n **光标向下移动五行**
* C-M-p **光标向上移动五行**
* C-M-f **光标向右移动五个字符**
* C-M-b **光标向左移动五个字符**
* C-h **删除光标前的字符**
* M-h **帮助命令**
* C-x C-b **ibuffer**
* M-down **down键指的是键盘上向下的那个箭头，将当前行向下移动**
* M-up **up键指的是键盘上向上的那个箭头，将当前行向上移动**
* C-return **return键指的是回车键，在当前行上方新开一行**
* C-M-return **在当前行的下方新开一行**
* M-; **代码注释的功能**
* jj **调用ace-jump-mode跳到指定的字符**
* jk **调用ace-jump-buffer,跳到指定的buffer**
* jl **跳到指定的行**
* C-= **扩展选中区域**
* C-c w **选中当前单词**
* C-c m **选中当前标识符**
* C-c i p **选中括号内部的内容**
* C-c o p **选中括号之外的内容**
* C-c i q **选中引号之内的内容**
* C-c o q **选中引号之外的内容**
* C-c % **使用正则表达式搜索并替换**

# 安装方法 #
下载该代码，解压之后，重命名为 `.emacs.d`,放在用户目录下即可。配置文件需要通过elpa安装一些包，所以要保证联网，剩下的就是耐心等待。  
