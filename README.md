Oh-My-Editors
=============

安装方法：
---------

1. `git submodule init`  
- `git submodule update`  
- 使 Emacs 的配置生效，运行下列命令：  
   `ln -s Oh-My-Editors/.emacs.d ~`  
   `ln -s Oh-My-Editors/.emacs ~`  

关于自动生成文件头：
--------------------

比较新的一个插件叫 header2.el，这个插件有个非常好的功能是能设置新文件自动生成文件头，但也有个毛病，
它是根据当前mode 的 comment-start，comment-end 来排版的，文档中有举例说 C 语言的 comment-start 是 /\*，
comment-end 是 \*/，但在我这里是 // 和 空串，生成的结果很不美观，但是又不知道怎么去修改这个插件，只好
舍弃这个插件用了相对较老的 auto-header.el，这个插件好处正是上个插件的毛病，它的排版很漂亮，但缺陷是不
能自动给新创建的文件生成文件头，所以只能手动来生成了。以下是它的一些操作与键的映射：  
- C-x C-h m  header-make                生成文件头  
- C-x C-h c  header-update-count        增加更新计数器  
- C-x C-h f  header-make-fnheader       插入函数头  

使用clang实现 C/C++ 智能补全的配置：
------------------------------------

1. 安装 clang 和 llvm  
-  进入 ~/.emacs.d/elpa/emacs-clang-complete-async 并执行 make 命令，生成
   clang-complete 可执行文件
-  编译和任何其他问题请参考
[emacs-clang-complete-async 项目主页](https://github.com/Golevka/emacs-clang-complete-async)

使用 jedi 实现 python 补全：
--------------------------

1. M-x list-packages，安装 jedi，这种方式方便之处在于系统会将
   concurrent、ctable、deferred、epc等jedi依赖的库一并安装。
- 进入 jedi 目录
	- 执行`sudo pip install -r requirements.txt`
	- 执行`sudo python setup.py install`
- 配置（.emacs）
- 详细安装步骤可参考：
	- [Emacs Plugins for Python](http://blog.sina.com.cn/s/blog_3f43d87c0101ctuv.html)
	- [Jedi.el - Python auto-completion for Emacs](http://tkf.github.io/emacs-jedi/released/)

问题：
------

1. 在 Ubuntu 下安装了 Emacs24 为什么 clang-complete 不工作？
	- 建议下载 Emacs24 源码编译安装，这个问题会得到解决。
-  重新安装系统后，cedet 加载有问题，该如何解决？
	- `sudo apt-get install texinfo`
	- `cd ~/.emacs.d/elpa/cedet-1.1`
	- `find -name Makefile -exec touch {} \;`
	- `make clean-all`
	- `make bootstrap`

推荐使用的软件：
----------------

1. Guake
	- 介绍：Guake是一个下拉式的gnome桌面环境下的终端程序，只需要按一个键F12就可以调用他，然后再按一次以便隐藏他。
			Guake支持快捷键、标签、背景透明等特性。
	- 配置：启动的在其上右击选“首选项”进行配置。
	- 问题：在 Ubuntu Unity 桌面环境下，会出现每次弹出的位置都与桌面上边框有距离，显得很不美观，解决办法如下：
			将 /usr/share/guake/guake.glade 中的
			<property name="gravity">static</property> 改为
			<property name="gravity">north</property>
-  tmux
	- 介绍：tmux是一个优秀的终端复用软件
	- 配置：git://github.com/yesmeck/tmuxrc.git
	- 要求：先安装 DejaVuSansMono-Powerline.ttf
