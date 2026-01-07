# blots-vim

Vim syntax highlighting and filetype detection for the Blots language.

## Install

### vim-plug

```vim
call plug#begin('~/.vim/plugged')

Plug 'paul-russo/blots-vim'

call plug#end()
```

Then run `:PlugInstall`.

### Manual

Copy the folders into your Vim runtime path:

- `ftdetect/blots.vim`
- `syntax/blots.vim`
- `ftplugin/blots.vim`

Example:

```bash
cp -R ftdetect syntax ftplugin ~/.vim/
```

## Usage

Open any `*.blots` file and Vim will set `filetype=blots` automatically.

## License

MIT
