Oh-My-Editors
=============

与编辑器相关的资料，包括配置文件和相关文档

python 的相关配置：
1. 请参阅 My Emacs Python environment.pdf
2. 经测试，Pymacs 只适合用 Python2 环境，在 Python3 中有不少错误，如果不嫌烦，可以手动修改
3. 文档中用的是 0.24beta 版本，我安装测试的也是这个版本，用 0.25 一片错误

使用clang实现 C/C++ 智能补全的配置：
1. 安装 clang 和 llvm
2. 进入 ~/.emacs.d/elpa/emacs-clang-complete-async 并执行 make 命令，生成
   clang-complete 可执行文件

1. git submodule init
2. git submodule update
3. 使 Emacs 和 Vim 的配置生效，运行下列命令：
   ln -s Oh-My-Editors/.emacs.d ~
   ln -s Oh-My-Editors/.emacs ~
   ln -s Oh-My-Editors/.vim ~
   ln -s Oh-My-Editors/.vimrc ~
