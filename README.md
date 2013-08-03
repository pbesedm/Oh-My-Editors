Oh-My-Editors
=============

安装方法：
---------

1. git submodule init  
2. git submodule update  
3. 使 Emacs 的配置生效，运行下列命令：  
   ln -s Oh-My-Editors/.emacs.d ~  
   ln -s Oh-My-Editors/.emacs ~  

关于自动生成文件头：
--------------------

比较新的一个插件叫 header2.el，这个插件有个非常好的功能是能设置新文件自动生成文件头，但也有个毛病，
它是根据当前mode 的 comment-start，comment-end 来排版的，文档中有举例说 C 语言的 comment-start 是 /\*，
comment-end 是 \*/，但在我这里是 // 和 空串，生成的结果很不美观，但是又不知道怎么去修改这个插件，只好
舍弃这个插件用了相对较老的 auto-header.el，这个插件好处正是上个插件的毛病，它的排版很漂亮，但缺陷是不
能自动给新创建的文件生成文件头，所以只能手动来生成了。以下是它的一些操作与键的映射：  
C-x C-h m  header-make                生成文件头  
C-x C-h c  header-update-count        增加更新计数器  
C-x C-h f  header-make-fnheader       插入函数头  

Python 的相关配置：
-------------------

1. 请参阅 My Emacs Python environment.pdf  
2. 经测试，Pymacs 只适合用 Python2 环境，在 Python3 中有不少错误，如果不嫌烦，可以手动修改  
3. 文档中用的是 0.24beta 版本，我安装测试的也是这个版本，用 0.25 一片错误  

使用clang实现 C/C++ 智能补全的配置：
------------------------------------

1. 安装 clang 和 llvm  
2. 进入 ~/.emacs.d/elpa/emacs-clang-complete-async 并执行 make 命令，生成
   clang-complete 可执行文件

问题：
------

1. 在 Ubuntu 下安装了 Emacs24 为什么 clang-complete 不工作？

建议下载源码编译安装，这个问题会得到解决。
