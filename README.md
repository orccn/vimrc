
#### **安装[Vundle](https://github.com/VundleVim/Vundle.vim)**

1. clone Vundle到本地：

    ` git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
  
2. 配置.vimrc文件：

    ` vim ~/.vimrc`
    
    配置详情配置示例请见官方
    
3. 安装插件：

    在vim中执行`:PluginInstall`
    
    或者在命令行中执行`vim +PluginInstall +qall`
    
    vim中执行`:PluginList`可查看已安装的插件
    
 #### 遇到的问题及解决办法（MacOS）
 - [taglist](https://www.vim.org/scripts/script.php?script_id=273)
 
    **问题：**
    安装完成后执行`:Tlist`或者`:TlistToggle`等命令出现以下错误：
    ```
    Taglist: Failed to generate tags for xxx.yy
    /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ctags: illegal option -- -^@usage: ctags [-BFadtuwvx] [-f tagsfile] file ...^@
    ```
    **原因：** 
    
    `~/.vimrc`中指定的是`let Tlist_Ctags_Cmd = '/usr/bin/ctags'`，而此ctags并非通常所说的Exuberant Ctags
    
    **解决：** 

    `brew install ctags`
    
    然后修改vimrc中的配置：`let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'`
   
 - [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
 
    **问题：**
    在`~/.vim/bundle/YouCompleteMe/`执行`./install.py --clang-completer`出现以下错误：
    ```
    File ~/.vim/bundle/YouCompleteMe/third_party/ycmd/build.py does not exist; you probably forgot to run:
	git submodule update --init --recursive
    ```
    
    **解决：** 

    `git submodule update --init --recursive`
    
    **问题：**
    在上述问题解决后继续执行`./install.py --clang-completer`出现以下错误：
    ```
    ERROR: Unable to find executable 'cmake'. CMake is required to build ycmd
    ```
    
    **解决：** 

    `brew install cmake`
