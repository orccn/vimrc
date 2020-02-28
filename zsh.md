#### 此文档是更改zsh默认命令行提示样式的方法（ohmyzsh的安装方法请见[官方](https://ohmyz.sh/)）

##### cd到家目录copy一个主题

`cp .oh-my-zsh/themes/robbyrussell.zsh-theme .oh-my-zsh/themes/myrobbyrussell.zsh-theme`


##### 编辑新拷贝的文件，将原PROMPT替换为下面的内容

`vi .oh-my-zsh/themes/myrobbyrussell.zsh-theme`

`PROMPT='%{$fg_bold[red]%}-> %{$fg_bold[green]%}%p%{$fg[cyan]%}[%n@%M] [%~]%{$fg_bold[blue]%} $(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}'`

##### 更改.zshrc中的设置

ZSH_THEME="robbyrussell" 替换为 ZSH_THEME="myrobbyrussell"

##### 使更改生效

`source .zshrc`
