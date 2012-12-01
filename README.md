Oh-My-Editors
=============

与编辑器相关的资料，包括配置文件和相关文档

python 的相关配置：

1. 下载 Rope 和 Ropemacs（没有配置），安装 Ropemacs 前，必须先安装 rope 和 pymacs
2. rope 安装方法：python setup.py install （可能需要 root 权限）
3. pymacs 安装方法：python setup.py install （可能需要 root 权限）
4. 将 pymacs.el 拷贝到 ~/.emacs.d/elpa/python/completion/
5. 拷贝 pycomplete.py 到 PYTHONPATH （比如：/usr/lib/python3.3/site-packages/）

1. git submodule init
2. git submodule update
3. 使 Emacs 和 Vim 的配置生效，运行下列命令：
   ln -s Oh-My-Editors/.emacs.d ~
   ln -s Oh-My-Editors/.emacs ~
   ln -s Oh-My-Editors/.vim ~
   ln -s Oh-My-Editors/.vimrc ~
