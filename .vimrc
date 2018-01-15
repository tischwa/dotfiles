" " search will center on the line it's found in.
" Search mappings: These will make it so that going to the next one in a
" autocmd BufRead *.f08 set filetype=fortran
" autocmd Bufenter *.hs compiler ghc
" autocmd CursorMoved *.hs call GHC_ShowType(0)
" let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_dotfiles = 1
" let g:ctrlp_max_files = 10000
" let g:ctrlp_max_height = 60
" map <ESC>[1;5A <C-Up>
" map <ESC>[1;5B <C-Down>
" map! <ESC>[1;5C <C-Right>
" map! <ESC>[1;5D <C-Left>
"Move a line of text using control
"highlight Comment ctermfg=LightYellow cterm=none
"highlight LineNr ctermfg=darkcyan
"highlight Statement ctermfg=blue
"let g:ctrlp_root_markers = ['fusion_urban']
"let g:haddock_browser = "/usr/bin/firefox"
"let g:haddock_indexfile = "/home/tischwa/.vim"
"map N Nzz
"map n nzz
"nmap <C-down> mz:m+<cr>`z
"nmap <C-up> mz:m-2<cr>`z
"set backupdir=/home/tschwarz/Data/backup/vim
"set colorcolumn=85
"set shortmess=O
"set wildmenu
"vmap <C-down> :m'>+<cr>`<my`>mzgv`yo`z
"vmap <C-up> :m'<-2<cr>`>my`<mzgv`yo`z
color desert
" color elflord
syntax enable
filetype plugin indent on
inoremap <C-c> <END><Tab>/*  */<Left><Left><Left><Left><Left><Left>
inoremap jk <ESC>
nnoremap <C-Down> :bn<CR>
nnoremap <C-Up> :bp<CR>
nnoremap <C-c> A<Tab>/*  */<Left><Left><Left><Left><Left><Left>
nnoremap <ESC>[5;5~ <C-PageUp>
nnoremap <ESC>[6;5~ <C-PageDown>
" nnoremap <ESC>O O<Esc>
nnoremap <ESC>h :h <C-r><C-w><CR>
nnoremap <ESC>n :nohlsearch<CR>
nnoremap <ESC>o o<Esc>
nnoremap <M-O>O O<Esc>
nnoremap <M-h> :h <C-r><C-w><CR>
nnoremap <M-n> :nohlsearch<CR>
nnoremap <M-o> o<Esc>
noremap <F4> <C-o>:ls<CR>
noremap <F5> <C-o>:make<CR>
noremap <F6> <C-o>:cc<CR>
noremap <F7> <C-o>:cp<CR>
noremap <F8> <C-o>:cn<CR>
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set backup
set cmdheight=1
set completeopt=menu
set cursorline
highlight CursorLine ctermbg=235 cterm=NONE
set expandtab
set formatoptions=rqn1jc
set gdefault
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=trail:S,tab:>-
set modeline
set mouse=a
set number
set pastetoggle=<F12>
set relativenumber
set ruler
set scrolloff=4
set shiftwidth=4
set showcmd
set showfulltag
set showmatch
" set timeoutlen=300
set smartcase
set softtabstop=4
" set t_Co=256
" set tags=/home/tschwarz/Developer/fusion/tags,tags
set textwidth=80
set ttyfast
set undofile
set wildmenu
set wildmode=list:longest

" Visual mode pressing * or # searches for the current selection
" " Super useful! From an idea by Michael Naumann
" vnoremap <silent> * :call VisualSelection('f')<CR>
" vnoremap <silent> # :call VisualSelection('b')<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" U undo line
" "* clipboards
" dgn delete go next
" :options
" set listchars, for showing trailing whitespace
" cmdheight
" args
" `" and `.
" :split 'filename'

" allows cursor change in tmux mode
" if exists('$TMUX')
"     let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
"     let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
" else
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" endif


autocmd InsertEnter * setlocal nolist
autocmd InsertLeave * setlocal list

