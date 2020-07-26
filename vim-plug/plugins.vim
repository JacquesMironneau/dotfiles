" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    "Superbe commentaires magiques
    Plug 'tpope/vim-commentary'    

    "La ligne en bas là <3
    Plug 'vim-airline/vim-airline'
    " des themes cool pour celle-là
    Plug 'vim-airline/vim-airline-themes'   

    " Colorizer preview :D
    "	Plug 'norcalli/nvim-colorizer.lua'
    
    " theming plugin
    Plug 'joshdick/onedark.vim'
  
    "Coc (conquer of completion)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " fzf workflow insane
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
