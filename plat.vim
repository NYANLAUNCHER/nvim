"platform specific config and vars.

if has('linux') == 1
    let g:os = "linux"
elseif has('win32') == 1
    let g:os = "windows"
elseif has('mac') == 1
    let g:os = "mac"
else
    let g:os = "unknown"
endif

if g:os == "linux"
    let g:vimhome = "~/.config/nvim/"
elseif g:os == "windows"
    let g:vimhome = "~/AppData/Local/nvim"
else
    let g:vimhome = "~/.config/nvim/"
endif

if g:os == "linux"
    let g:vimdata = "~/.local/share/nvim"
elseif g:os == "windows"
    let g:vimdata = "~/AppData/Local/nvim-data"
else
    let g:vimdata = "~/.local/share/nvim"
endif

echo g:os
echo g:vimhome
echo g:vimdata
