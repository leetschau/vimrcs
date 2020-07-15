# Vim/Neovim Configurations

vim/neovim loads its configs from $XDG_CONFIG_HOME/nvim/init.vim.
By changing the value of XDG_CONFIG_HOME,
we can load different configurations for different scenarios.

Compared with [vem](https://github.com/leetschau/vem),
this method has no external dependencies.
After configurations changed, they take effects at once without regenerating init.vim,
which makes experiments more convenient.

## Udage

Configurations for different scenarios are put into different folders.
If using neovim as a bare editor without any plugins, start nvim with:
```
XDG_CONFIG_HOME=$REPO_ROOT nvim myscript.py
```

As a enhanced editor, with some general text editing plugins,
such as minibuffer, CtrlP, nerdtree, etc, start nvim with:
```
XDG_CONFIG_HOME=$REPO_ROOT/text nvim myscript.py
```

As a Python editor, start nvim with:
```
XDG_CONFIG_HOME=$REPO_ROOT/python nvim myscript.py
```

And for nim, asciidoc, etc.

With the help of [direnv](https://direnv.net/),
the configs can change automatically for different projects.

For example, neovim will automatically loads Python configs
by adding the following lines into .envrc
of the Python project root folder:
```
export XDG_CONFIG_HOME=$HOME/Documents/sources/vimrcs/asciidoc
```

## Problems

XDG_CONFIG_HOME is not used only by neovim.
If other applications also it, they won't find the config files.

In this case, you have to remove the definition of XDG_CONFIG_HOME
from .envrc.
And use alias instead:
```
alias vi="XDG_CONFIG_HOME=$REPO_ROOT/asciidoc nvim"
```

For direnv hasn't support alias yet,
you can use [desk](https://github.com/jamesob/desk) to define a deskfile,
with the alias definition in it.

## Other Options

Another environment variable MYVIMRC can also be used to load configs:
```
MYVIMRC=$HOME/Documents/sources/vimrcs/nim.vim nvim dsnote.nim
```

But the environment created via this method is not pure enough.
It could be *polluted* by default configs in ~/.config/nvim.
Hence the configs in MYVIMRC can't be loaded properly.
So I choose XDG_CONFIG_HOME finally,
even in MYVIMRC style the config directory structure will be far more concise:
```
vimrcs
.
├── asciidoc.vim
├── base.vim
├── langbase.vim
├── nim.vim
├── README.md
└── text.vim
```

