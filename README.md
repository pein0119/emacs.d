emacs.d
=======
我的emacs配置文件(GNU emacs24.2)

# 适用语言 #

* c/c++
* python

# 文件组织 #

## init.el ##

功能：加载各个配置文件

## config ##
主要存放一些配置文件
* init-base.el 基础配置文件，只依赖emacs本身
* init-face.el 对emacs的主题，模式栏进行配置
* init-func.el 收集的一些零散的比较又用的函数
* init-kbd.el  快捷键键绑定
* init-dev.el  关于编程环境的一些配置
* init-misc.le 零散的一些配置

## lib ##
主要存放配置需要的包

* ace-jump-buffer 快速跳转到别的buffer
* ace-jump-mode 快速跳转到当前buffer的任一位置
* auto-complete 自动补全插件
* flymake-cursor 配合flymake使用，在minibuffer显示出错信息
* flymake-eays   配合flymake使用
* parenthese 所有关于括号的配置(跳转到匹配的括号，匹配括号高亮，括号自动补全)
* popwin ctrl-g可以关闭弹出的缓冲区
* pyflakes python的flymake,能检测python的语法错误(有时候不太准确)
* pylookup 强烈推荐的插件，可以方便的查找python手册
* site-lisps 存放一些收集到的比较零散的emacs配置文件
* snippet yasnippet的代码片段
* tabbar-master 为emacs加入类似浏览器标签的功能(暂时未使用)
* themes 存放我的emacs主题的地方
* yasnippet emacs的代码片段功能
* expand-region 快速选中区域

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
* f4 **弹出ipython**
* f5 **gdb调试功能**
* f6 **平分窗口，启动eshell**
* C-f6 **在当前窗口启动eshell**
* C-l **在eshell中的作用是清屏**
* f7 **开启speedbar**
* S-f7 **隐藏speedbar**
* f8 **调用pylookup,搜索文档，文档对应的是python2.7.5**
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
* C-c SPC **SPC指的是空格键，调用ace-jump-mode跳到指定的字符**
* C-c b **调用ace-jump-buffer,跳到指定的buffer**
* C-x SPC **ace-jump-mode-pop-mark**
* C-= **扩展选中区域**
* C-c w **选中当前单词**
* C-c m **选中当前标识符**
* C-c i p **选中括号内部的内容**
* C-c o p **选中括号之外的内容**
* C-c i q **选中引号之内的内容**
* C-c o q **选中引号之外的内容**
* C-c % **使用正则表达式搜索并替换**

# 安装方法 #

## 下载本配置文件 ##

支持三种访问协议：

* HTTP协议: `https://github.com/pein0119/emacs.d.git` 。
* Git协议: `git://github.com/pein0119/emacs.d.git` 。
* SSH协议: `ssh://git@github.com/pein0119/emacs.d.git` 。

## 具体安装 ##

* 备份你原来的.emacs,.emacs.d文件
* 将本配置文件解压到你的用户目录下，更名为.emacs.d即可
* 另，如果需要使用f4绑定的ipython,需要安装ipython
* 如果需要使用ascope阅读源代码，需要安装cscope
* 如果需要markdown模式的导出功能，需要安装markdown
