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
* init-elpa.el 对使用elpa安装的包的相关配置，目前未用

## lib ##
主要存放配置需要的包

* ace-jump-buffer 快速跳转到别的buffer
* ace-jump-mode 快速跳转到当前buffer的任一位置
* auto-complete 自动补全插件
* color-theme 配置emacs主题的插件
* flymake-cursor 配合flymake使用，在minibuffer显示出错信息
* flymake-eays   配合flymake使用
* multiple-cursors 类似于subtext的多指针功能，能同时编辑多处(暂时未配置)
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

# 安装方法 #

## 下载本配置文件 ##

支持三种访问协议：

* HTTP协议: `https://github.com/pein0119/emacs.d.git` 。
* Git协议: `git://github.com/pein0119/emacs.d.git` 。
* SSH协议: `ssh://git@github.com/pein0119/emacs.d.git` 。

## 具体安装 ##

* 备份你原来的.emacs,.emacs.d文件
* 将本配置文件解压到你的用户目录下，更名为.emacs.d即可
