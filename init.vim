set number  
set mouse=a
synt enable
set showcmd
set encoding=utf-8
set showmatch
set relativenumber
syntax on
filetype plugin indent on
set ts=3 sts=3 sw=3 et ai si
filetype plugin on
set cmdheight=1
set cursorline

" LISTA DE PLUGGINS

call plug#begin('~/.vim/plugged')

   " TEMAS GRUVBOX                  	           
   Plug 'sainnhe/gruvbox-material' 
	
   " DEOPLETE
   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }	
	
	" SNIPPET ENGINE                         
	Plug 'SirVer/ultisnips'                  

	" SNIPPET PLUGGIN
	Plug 'honza/vim-snippets'

	" VIMTEX
	Plug 'lervag/vimtex'

	" MINI.MOVE                
	Plug 'matze/vim-move'      

	" Conquer Of Completion
   "Plug 'neoclide/coc.nvim'

   " VIM TRANSPARENT
   Plug 'tribela/vim-transparent'
   
   " STATUS BAR
   Plug 'maximbaz/lightline-ale'
   Plug 'itchyny/lightline.vim'

   " NERD TREE
   Plug 'preservim/nerdtree'

   " TYPING 
   Plug 'jiangmiao/auto-pairs'
   Plug 'alvan/vim-closetag'
   Plug 'tpope/vim-surround'

   " IDE
   Plug 'editorconfig/editorconfig-vim'
   Plug 'junegunn/fzf'
   Plug 'junegunn/fzf.vim'
   Plug 'terryma/vim-multiple-cursors'
   Plug 'easymotion/vim-easymotion'
   "Plug 'Yggdroot/indentLine'
   Plug 'lukas-reineke/indent-blankline.nvim'
   Plug 'preservim/nerdcommenter'

 call plug#end()

" GRUVBOX CONFIGURACIÓN
set background=dark
let g:gruvbox_material_background='medium'
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox-material

" DEOPLETE CONFIGURACIÓN
set completeopt=menu,noinsert
let g:deoplete#enable_at_startup = 1

" SNIPPET CONFIGURATION
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" INDENTLINE CONFIGURATION
let g:indentLine_color_term = 15
let g:indentLine_char = '|'

" INDENT-BLACKLINE CONFIGURATION
lua << END
   require("ibl").setup{ indent = { highlight = "Delimiter"} }
   require("ibl").update{indent = { char = "│" } } 
END

