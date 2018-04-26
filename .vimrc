" " search will center on the line it's found in.
" "* clipboards
" :options
" :split 'filename'
" Search mappings: These will make it so that going to the next one in a
" U undo line
" `" and `.
" args
" autocmd BufRead *.f08 set filetype=fortran
" autocmd Bufenter *.hs compiler ghc
" autocmd CursorMoved *.hs call GHC_ShowType(0)
" cmdheight
" color elflord
" dgn delete go next
" let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_dotfiles = 1
" let g:ctrlp_max_files = 10000
" let g:ctrlp_max_height = 60
" map <ESC>[1;5A <C-Up>
" map <ESC>[1;5B <C-Down>
" map! <ESC>[1;5C <C-Right>
" map! <ESC>[1;5D <C-Left>
" nnoremap <ESC>O O<Esc>
" set t_Co=256
" set tags=/home/tschwarz/Developer/fusion/tags,tags
" set timeoutlen=300
" vnoremap <silent> # :call VisualSelection('b')<CR> " Visual mode pressing * or # searches for the current selection
" vnoremap <silent> * :call VisualSelection('f')<CR> " Visual mode pressing * or # searches for the current selection
"Move a line of text using control
"highlight Comment ctermfg=LightYellow cterm=none
"highlight LineNr ctermfg=darkcyan
"highlight Statement ctermfg=blue
"let fortran_do_enddo=1
"let fortran_free_source=1
"let fortran_more_precise=1
"let g:CommandTMaxCachedDirectories=5
"let g:CommandTMaxFiles=20000
"let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_max_files = 50000
"let g:ctrlp_root_markers = ['fusion_urban']
"let g:haddock_browser = "/usr/bin/firefox"
"let g:haddock_browser = "/usr/bin/opera"
"let g:haddock_indexfile = "/home/tischwa/.vim"
"map N Nzz
"map n nzz
"map! <ESC>Oc <C-Right>
"map! <ESC>Oc <C-Right>
"map! <ESC>Od <C-Left>
"map! <ESC>Od <C-Left>
"nmap <C-down> mz:m+<cr>`z
"nmap <C-up> mz:m-2<cr>`z
"nmap <ESC>[5^ <C-PageUp>
"nmap <ESC>[5^ <C-PageUp>
"nmap <ESC>[6^ <C-PageDown>
"nmap <ESC>[6^ <C-PageDown>
"set backupdir=/home/tschwarz/Data/backup/vim
"set shortmess=O
"vmap <C-down> :m'>+<cr>`<my`>mzgv`yo`z
"vmap <C-up> :m'<-2<cr>`>my`<mzgv`yo`z
au BufEnter *.hs compiler ghc
au BufEnter *.hs compiler ghc
autocmd InsertEnter * setlocal nolist
autocmd InsertLeave * setlocal list
"color desert
filetype plugin indent on
highlight CursorLine ctermbg=235 cterm=NONE
highlight ColorColumn ctermbg=233 cterm=NONE
inoremap <C-c> <END><Tab>/*  */<Left><Left><Left><Left><Left><Left>
inoremap jk <ESC>
let g:haddock_browser = "/usr/bin/opera"
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
nmap <F4> :ls<CR>
nmap <F5> :make<CR>
nmap <F6> :cc<CR>
nmap <F7> :cp<CR>
nmap <F8> :cn<CR>
nnoremap <C-Down> :bn<CR>
nnoremap <C-Up> :bp<CR>
nnoremap <C-c> A<Tab>/*  */<Left><Left><Left><Left><Left><Left>
nnoremap <ESC>[5;5~ <C-PageUp>
nnoremap <ESC>[6;5~ <C-PageDown>
nnoremap <ESC>h :h <C-r><C-w><CR>
nnoremap <ESC>n :nohlsearch<CR>
nnoremap <ESC>o o<Esc>
nnoremap <M-O>O O<Esc>
nnoremap <M-h> :h <C-r><C-w><CR><C-w><C-w>
nnoremap <M-n> :nohlsearch<CR>
nnoremap <M-o> o<Esc>
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set backup
set cmdheight=1
set colorcolumn=80
set completeopt=menu
set cursorline
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
set smartcase
set softtabstop=4
set textwidth=80
set title
set ttyfast
set undofile
set wildmenu
set wildmode=list:longest
syntax enable

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

