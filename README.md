Installation
------------

```bash
$ git clone https://github.com/biskark/Vim-settings temp/
$ mv temp/* .
$ mv temp/.git* .
$ mv temp/.vim* .
$ rm -rf temp

$ git submodule init
$ git submodule update

$ vim
```

Then, from within vim

```vim
:BundleInstall
```
