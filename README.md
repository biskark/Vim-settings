Installation
------------

```bash
$ git clone https://github.com/biskark/Vim-settings.git temp/
$ mv temp/* .
$ mv temp/.git* .
$ mv temp/.vim* .
$ rmdir temp

$ git submodule init
$ git submodule update

$ vim
```

Then, from within vim

```vim
:BundleInstall
```
