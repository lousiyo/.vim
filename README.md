# vim
vim config file   
very simple just for me  

1. cp .vimrc to user dir like /home/xxx;

2. execute `vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"`;

3. nvim.coc config
```bash
    curl -sL install-node.vercel.app/lts | bash
    apt install clangd
    apt install llvm
    apt install clang
    apt install clang-tool
    apt install clang-tools
```

4. CocInstall 
```
    :CocInstall coc-clangd  
    :CocInstall coc-git    
    :CocInstall coc-highlight  
    :CocInstall coc-jedi   
    :CocInstall coc-json   
    :CocInstall coc-sh     
    :CocInstall coc-syntax
```

