call plug#begin()
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'davidhalter/jedi-vim'
Plug 'mattn/emmet-vim'
call plug#end()

set encoding=utf-8
set completeopt-=preview
set syntax=on
set scrolloff=5
set backspace=indent,eol,start
set hidden
set number
set relativenumber
set inccommand=split
set autoindent
set smartindent
set history=5000
set cursorline
set mouse=a
set clipboard=unnamedplus
set tabstop=4 softtabstop=4 expandtab shiftwidth=4
set foldmethod=syntax
set foldlevel=99
set fileformat=unix

nmap <F10> :w <bar> :bp<CR> 

let mapleader = ' '


if (has("termguicolors"))
	set termguicolors
endif

" nerdcommenter

nmap <C-_> <Plug>NERDCommenterToggle
nmap <C-_> <Plug>NERDCommenterToggle<CR>gv


" nerdtree

let NERDTreeQuitOnOpen = 1
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinPos = "Right"
noremap <F2> :NERDTreeToggle <bar> :NERDTreeRefreshRoot<CR>
" Tabs




nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <leader><ESC> :wq<CR>
nmap <C-w> :bd<CR>


" Utilsnips

let g:UtilSnipsSnippetDirectories=[$HOME.'/.config/nvim/utilsnips']
let g:UtilSnipsExpandTrigger="<tab>"
let g:UtilSnipsJumpForwardTrigger="<tab>"
let g:UtilSnipsJumpBackwardTrigger="<s-tab>"


highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0

let g:jedi#show_call_signatures = "2"
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_stubs_command = "<leader>s"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"


autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>


" emmet
let g:user_emmet_leader_key='<C-L>'
let g:catppuccin_flavour = "mocha"
colorscheme catppuccin
