lua require "user.options"
lua require "user.keymaps"
lua require "user.plugins"
lua require "user.colorscheme"
lua require "user.cmp"
lua require "user.lsp"
lua require "user.telescope"
lua require "user.treesitter"
lua require "user.autopairs"
lua require "user.comment"
lua require "user.gitsigns"
lua require "user.nvim-tree"
lua require "user.bufferline"
lua require "user.lualine"
lua require "user.toggleterm"
lua require "user.project"
lua require "user.impatient"
lua require "user.indentline"
lua require "user.alpha"
lua require "user.whichkey"
lua require "user.autocommands"

" auto-install vim-plug
if empty(glob("~/.config/nvim/autoload/plug.vim"))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin("~/.config/nvim/autoload/plugged")

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'scrooloose/NERDTree'
" Copilot
Plug 'github/copilot.vim'
" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
