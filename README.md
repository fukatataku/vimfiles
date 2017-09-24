# vimfiles

## セットアップ手順

vimfilesをclone
```
$ mkdir -p ~/.vim
$ cd ~/.vim
$ git clone https://github.com/fukatataku/vimfiles.git .
```

dein.vimをインストール
```
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh ./installer.sh ~/.vim/dein
```

プラグインをインストール
```
$ vi
:call dein#install()
```
