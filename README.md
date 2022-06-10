
# Nvim
This is my neovim config. I'd advise that you don't use much of my config since I'm bad at this.

## Installation
1. Install [Vim-Plug](https://github.com/junegunn/vim-plug.git).
2. Install [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
3. Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim).

### Linux Install
In the terminal, run these commands.

Run this in the directory you want "nvim" to be stored, most likely "~/.config/".
```
git clone https://github.com/NYANLAUNCHER/nvim.git
```
Run this in the repo's root dir.
```
rm -rf .git, .gitignore
```

### Windows Install
In cmd or powershell run these commands.

Run this in the directory you want "nvim" to be stored, most likely "~/AppData/Local/".
```
git clone https://github.com/NYANLAUNCHER/nvim.git
```
Run this in the repo's root dir.
```
del .git, .gitignore
```

## Directories
<pre>
./
├─ colors/ color schemes
├─ compiler/ compiler configs
├─ ftdetect/ detect filetypes
├─ ftplugin/ filetype configs
├─ cfg/ main|base configs
├─ plugcfg/ plugin configs
├─ lua/ lua modules
├─ spell/ spell checking
├─ syntax/ syntax highlighting
├─ scripts/ sh scripts
└─ init.vim, source configs
</pre>
