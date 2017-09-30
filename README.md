# vimfiles

## vim最新版をlua付きでインストール

必要ならvimをアンインストール
```
sudo apt remove --purge vim vim-runtime vim-common
```

必要なパッケージをインストール
```
$ sudo apt install -y build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev python3-dev ruby-dev
```

vimをビルド
```
$ mkdir ~/tmp
$ cd ~/tmp
$ git clone https://github.com/vim/vim
$ cd vim/
$ sudo ./configure --with-features=huge --enable-multibyte --enable-luainterp=dynamic --enable-gpm --enable-cscope --enable-fontset --enable-fail-if-missing --prefix=/usr/local --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-rubyinterp=dynamic
$ make
$ sudo make install
```

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
