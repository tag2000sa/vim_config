"" GENERAL
set number
set relativenumber
syntax on
set nowrap
set encoding=utf-8
colorscheme darkblue
set background=dark
set showcmd 
set ignorecase
set smartcase
set showtabline=2
set laststatus=2
set statusline=%F%=%y\ %l,%v[%p%%]
set signcolumn=yes
set cursorline
highlight LineNR cterm=none ctermfg=white ctermbg=gray
highlight CursorLineNR cterm=bold ctermfg=darkred  ctermbg=yellow
highlight CursorLine cterm=none ctermfg=none  ctermbg=darkblue
set foldmethod=indent

"" KEY REMAPING
let mapleader="/"
map <leader>w :w<cr>
map <leader>wq :wq<cr>
map <leader>q1 :q!<cr>

"" TOGGLE LOCAL PASTE MODE
nmap <F2> :set invpaste paste?<cr>
imap <F2> <c-o>:set invpaste paste?<cr>
set pastetoggle=<F2>

"" TOGGLE COMMENTS/UNCOMMENT
autocmd FileType c,cpp,java	let b:comment_leader='\/\/'
autocmd FileType sh,bash	let b:comment_leader='#'
autocmd FileType vim		let b:comment_leader='"'
function! CommentLine()
	execute ':s/^\(.*\)/'.b:comment_leader.'\1/g'
endfunction
function! UncommentLine()
	execute ':s/^'.b:comment_leader.'//g'
endfunction
map <leader>c :call CommentLine()<cr>
map <leader>C :call UncommentLine()<cr>

"" INSERT TIME
nmap <F3> "=strftime("%d/%m/%y %H:%M:%S")<cr>p
imap <F3> <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"" TABS
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tt :tabnext<cr>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/<cr>

"" SNIPPETS
map <F7> :0r ~/.config/nvim/templates/header.snpt<cr>V4j:call CommentLine()<cr>j
imap <F7> <esc>:-1r ~/.config/nvim/templates/header.snpt<cr>V4j:call CommentLine()<cr>ji
map <F8> :-1r ~/.config/nvim/templates/bash.snpt<cr>ji
map <F9> :-1r ~/.config/nvim/templates/c.snpt<cr>GGdd/return<cr>O
