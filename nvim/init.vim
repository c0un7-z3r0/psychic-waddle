
set nocompatible              " be iMproved, required
filetype off                  " required


"██████╗░██╗░░░░░██╗░░░██╗░██████╗░██╗███╗░░██╗░██████╗
"██╔══██╗██║░░░░░██║░░░██║██╔════╝░██║████╗░██║██╔════╝
"██████╔╝██║░░░░░██║░░░██║██║░░██╗░██║██╔██╗██║╚█████╗░
"██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗██║██║╚████║░╚═══██╗
"██║░░░░░███████╗╚██████╔╝╚██████╔╝██║██║░╚███║██████╔╝
"╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░╚═╝╚═╝░░╚══╝╚═════╝░

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif


call plug#begin('~/.vim/plugged')

" GOlang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Bottom Bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'

" Search
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" HTML
Plug 'AndrewRadev/tagalong.vim'


Plug 'vim-scripts/bufexplorer.zip'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/mru.vim'
Plug 'danilamihailov/beacon.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" Typescript
Plug 'Quramy/tsuquyomi'
Plug 'HerringtonDarkholme/yats.vim'

Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Yggdroot/indentLine'
Plug 'mattn/emmet-vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/matchit.zip'
Plug 'Wolfy87/vim-enmasse'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'groenewege/vim-less'
Plug 'airblade/vim-gitgutter'
Plug 'yuttie/comfortable-motion.vim'
Plug 'mhinz/vim-startify'
Plug 'frazrepo/vim-rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dkprice/vim-easygrep'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'apzelos/blamer.nvim'
Plug 'raimondi/delimitmate'
Plug 'sjl/vitality.vim'



" COC Extensions
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-emmet', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-spell-checker', {'do': 'yarn install --frozen-lockfile'}


call plug#end()

"░██████╗░███████╗███╗░░██╗███████╗██████╗░░█████╗░██╗░░░░░
"██╔════╝░██╔════╝████╗░██║██╔════╝██╔══██╗██╔══██╗██║░░░░░
"██║░░██╗░█████╗░░██╔██╗██║█████╗░░██████╔╝███████║██║░░░░░
"██║░░╚██╗██╔══╝░░██║╚████║██╔══╝░░██╔══██╗██╔══██║██║░░░░░
"╚██████╔╝███████╗██║░╚███║███████╗██║░░██║██║░░██║███████╗
"░╚═════╝░╚══════╝╚╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
" Trigger autoread when changing buffers inside while inside vim:
au FocusGained,BufEnter * :checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "
let g:mapleader = " "

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"███╗░░██╗░█████╗░██╗░░░██╗██╗░██████╗░░█████╗░████████╗██╗░█████╗░███╗░░██╗
"████╗░██║██╔══██╗██║░░░██║██║██╔════╝░██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║
"██╔██╗██║███████║╚██╗░██╔╝██║██║░░██╗░███████║░░░██║░░░██║██║░░██║██╔██╗██║
"██║╚████║██╔══██║░╚████╔╝░██║██║░░╚██╗██╔══██║░░░██║░░░██║██║░░██║██║╚████║
"██║░╚███║██║░░██║░░╚██╔╝░░██║╚██████╔╝██║░░██║░░░██║░░░██║╚█████╔╝██║░╚███║
"╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝

inoremap jj <esc>
inoremap jk <esc>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Jump to start/end of line
noremap H ^
noremap L $

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk


"████████╗░█████╗░██████╗░░██████╗
"╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
"░░░██║░░░███████║██████╦╝╚█████╗░
"░░░██║░░░██╔══██║██╔══██╗░╚═══██╗
"░░░██║░░░██║░░██║██████╦╝██████╔╝
"░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═════╝░

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/


"██╗░░░██╗██╗███╗░░░███╗  ██╗░░░██╗██╗
"██║░░░██║██║████╗░████║  ██║░░░██║██║
"╚██╗░██╔╝██║██╔████╔██║  ██║░░░██║██║
"░╚████╔╝░██║██║╚██╔╝██║  ██║░░░██║██║
"░░╚██╔╝░░██║██║░╚═╝░██║  ╚██████╔╝██║
"░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ░╚═════╝░╚═╝

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

"Always show current position
set ruler

" Highlight 120 charactes column
set colorcolumn=120

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Folding
set foldmethod=indent
set foldlevelstart=99
set foldnestmax=10
set nofoldenable        "dont fold by default
set foldlevel=1

set splitright " open split window to the right (default: left)

"░██████╗████████╗██╗░░░██╗██╗░░░░░███████╗
"██╔════╝╚══██╔══╝╚██╗░██╔╝██║░░░░░██╔════╝
"╚█████╗░░░░██║░░░░╚████╔╝░██║░░░░░█████╗░░
"░╚═══██╗░░░██║░░░░░╚██╔╝░░██║░░░░░██╔══╝░░
"██████╔╝░░░██║░░░░░░██║░░░███████╗███████╗
"╚═════╝░░░░╚═╝░░░░░░╚═╝░░░╚══════╝╚══════╝

" Enable syntax highlighting
syntax enable

" Set extra options when running in GUI mode
if has('gui_running')
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

"░██████╗████████╗░█████╗░████████╗██╗░░░██╗░██████╗  ██╗░░░░░██╗███╗░░██╗███████╗
"██╔════╝╚══██╔══╝██╔══██╗╚══██╔══╝██║░░░██║██╔════╝  ██║░░░░░██║████╗░██║██╔════╝
"╚█████╗░░░░██║░░░███████║░░░██║░░░██║░░░██║╚█████╗░  ██║░░░░░██║██╔██╗██║█████╗░░
"░╚═══██╗░░░██║░░░██╔══██║░░░██║░░░██║░░░██║░╚═══██╗  ██║░░░░░██║██║╚████║██╔══╝░░
"██████╔╝░░░██║░░░██║░░██║░░░██║░░░╚██████╔╝██████╔╝  ███████╗██║██║░╚███║███████╗
"╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝░░░╚═╝░░░░╚═════╝░╚═════╝░  ╚══════╝╚═╝╚═╝░░╚══╝╚══════╝

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

let g:airline#extensions#branch#enabled = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using SHIFT+[Up|Down]
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ack \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction


"███████╗███████╗███████╗
"██╔════╝╚════██║██╔════╝
"█████╗░░░░███╔═╝█████╗░░
"██╔══╝░░██╔══╝░░██╔══╝░░
"██║░░░░░███████╗██║░░░░░
"╚═╝░░░░░╚══════╝╚═╝░░░░░
"Search in the current directory
command! -bang -nargs=* PRg
  \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'dir': system('git -C '.expand('%:p:h').' rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)

nnoremap <silent> <C-p> :Files<Cr>
nnoremap <silent> <C-b> :Buffers<Cr>
nnoremap <silent> <C-p>l :Rg<Cr>

if has("nvim")
    " Escape inside a FZF terminal window should exit the terminal window
    " rather than going into the terminal's normal mode.
    autocmd FileType fzf tnoremap <buffer> <Esc> <Esc>
endif


"░██████╗░██╗░░░██╗██╗
"██╔════╝░██║░░░██║██║
"██║░░██╗░██║░░░██║██║
"██║░░╚██╗██║░░░██║██║
"╚██████╔╝╚██████╔╝██║
"░╚═════╝░░╚═════╝░╚═╝

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("linux")
    set gfn=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("unix")
    set gfn=Monospace\ 11
endif


" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colorscheme
set termguicolors

if has("gui_running")
    set background=dark
    colorscheme railscasts
else

  " If the current iTerm tab has been
  " created using the **dark** profile:
  if $ITERM_PROFILE == 'Solarized Dark'
    colorscheme solarized
    let g:colors_name="solarized"
    "let g:solarized_termcolors = 256
    "let g:solarized_visibility = "high"
    "let g:solarized_contrast = "high"
    set background=dark
  endif

  " If the current iTerm tab has been
  " created using the **light** profile:
  if $ITERM_PROFILE == 'Solarized Light'
    colorscheme solarized
    let g:colors_name="solarized"
    "let g:solarized_termcolors = 256
    "let g:solarized_visibility = "high"
    "let g:solarized_contrast = "high"
    set background=light
  endif

  if $ITERM_PROFILE == 'Mango'
    set t_Co=256
    color mango
    set background=dark
  endif

  if $ITERM_PROFILE == 'Distinguished'
    color distinguished
    set background=dark
  endif

  if $ITERM_PROFILE == 'Dracula'
    set background =dark
    set t_Co=256
    color dracula
    colorscheme dracula
  endif
endif

"call togglebg#map("<F5>")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='dracula'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry



"██████╗░░█████╗░██████╗░███████╗███╗░░██╗████████╗██╗░░██╗███████╗░██████╗██╗░██████╗
"██╔══██╗██╔══██╗██╔══██╗██╔════╝████╗░██║╚══██╔══╝██║░░██║██╔════╝██╔════╝██║██╔════╝
"██████╔╝███████║██████╔╝█████╗░░██╔██╗██║░░░██║░░░███████║█████╗░░╚█████╗░██║╚█████╗░
"██╔═══╝░██╔══██║██╔══██╗██╔══╝░░██║╚████║░░░██║░░░██╔══██║██╔══╝░░░╚═══██╗██║░╚═══██╗
"██║░░░░░██║░░██║██║░░██║███████╗██║░╚███║░░░██║░░░██║░░██║███████╗██████╔╝██║██████╔╝
"╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═════╝░╚═╝╚═════╝░

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $5 ""<esc>i
inoremap $t <><esc>i

"░░░░░██╗░██████╗  ░██████╗███████╗░█████╗░████████╗██╗░█████╗░███╗░░██╗
"░░░░░██║██╔════╝  ██╔════╝██╔════╝██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║
"░░░░░██║╚█████╗░  ╚█████╗░█████╗░░██║░░╚═╝░░░██║░░░██║██║░░██║██╔██╗██║
"██╗░░██║░╚═══██╗  ░╚═══██╗██╔══╝░░██║░░██╗░░░██║░░░██║██║░░██║██║╚████║
"╚█████╔╝██████╔╝  ██████╔╝███████╗╚█████╔╝░░░██║░░░██║╚█████╔╝██║░╚███║
"░╚════╝░╚═════╝░  ╚═════╝░╚══════╝░╚════╝░░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝

au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> $log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

let g:vim_json_syntax_conceal = 0

"██████╗░██╗░░░██╗███████╗███████╗██╗░░██╗██████╗░██╗░░░░░░█████╗░██████╗░███████╗██████╗░
"██╔══██╗██║░░░██║██╔════╝██╔════╝╚██╗██╔╝██╔══██╗██║░░░░░██╔══██╗██╔══██╗██╔════╝██╔══██╗
"██████╦╝██║░░░██║█████╗░░█████╗░░░╚███╔╝░██████╔╝██║░░░░░██║░░██║██████╔╝█████╗░░██████╔╝
"██╔══██╗██║░░░██║██╔══╝░░██╔══╝░░░██╔██╗░██╔═══╝░██║░░░░░██║░░██║██╔══██╗██╔══╝░░██╔══██╗
"██████╦╝╚██████╔╝██║░░░░░███████╗██╔╝╚██╗██║░░░░░███████╗╚█████╔╝██║░░██║███████╗██║░░██║
"╚═════╝░░╚═════╝░╚═╝░░░░░╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚══════╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝

let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

"███╗░░░███╗██████╗░██╗░░░██╗
"████╗░████║██╔══██╗██║░░░██║
"██╔████╔██║██████╔╝██║░░░██║
"██║╚██╔╝██║██╔══██╗██║░░░██║
"██║░╚═╝░██║██║░░██║╚██████╔╝
"╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚═════╝░

let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

"██╗░░░██╗░█████╗░███╗░░██╗██╗░░██╗██████╗░██╗███╗░░██╗░██████╗░
"╚██╗░██╔╝██╔══██╗████╗░██║██║░██╔╝██╔══██╗██║████╗░██║██╔════╝░
"░╚████╔╝░███████║██╔██╗██║█████═╝░██████╔╝██║██╔██╗██║██║░░██╗░
"░░╚██╔╝░░██╔══██║██║╚████║██╔═██╗░██╔══██╗██║██║╚████║██║░░╚██╗
"░░░██║░░░██║░░██║██║░╚███║██║░╚██╗██║░░██║██║██║░╚███║╚██████╔╝
"░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝╚═╝░░╚══╝░╚═════╝░

if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim/temp_dirs/'
endif

"██╗░░░██╗██╗███╗░░░███╗  ░██████╗░██████╗░███████╗██████╗░
"██║░░░██║██║████╗░████║  ██╔════╝░██╔══██╗██╔════╝██╔══██╗
"╚██╗░██╔╝██║██╔████╔██║  ██║░░██╗░██████╔╝█████╗░░██████╔╝
"░╚████╔╝░██║██║╚██╔╝██║  ██║░░╚██╗██╔══██╗██╔══╝░░██╔═══╝░
"░░╚██╔╝░░██║██║░╚═╝░██║  ╚██████╔╝██║░░██║███████╗██║░░░░░
"░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░░░░
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH



"███╗░░██╗███████╗██████╗░██████╗░  ████████╗██████╗░███████╗███████╗  ██╗░░░░░██╗███╗░░██╗███████╗
"████╗░██║██╔════╝██╔══██╗██╔══██╗  ╚══██╔══╝██╔══██╗██╔════╝██╔════╝  ██║░░░░░██║████╗░██║██╔════╝
"██╔██╗██║█████╗░░██████╔╝██║░░██║  ░░░██║░░░██████╔╝█████╗░░█████╗░░  ██║░░░░░██║██╔██╗██║█████╗░░
"██║╚████║██╔══╝░░██╔══██╗██║░░██║  ░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░  ██║░░░░░██║██║╚████║██╔══╝░░
"██║░╚███║███████╗██║░░██║██████╔╝  ░░░██║░░░██║░░██║███████╗███████╗  ███████╗██║██║░╚███║███████╗
"╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═════╝░  ░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝  ╚══════╝╚═╝╚═╝░░╚══╝╚══════╝
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

" Open nerdtree automatically
" autocmd vimenter * NERDTree

" close nerdtree on open of file
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


"███╗░░██╗███████╗██████╗░██████╗░  ░█████╗░░█████╗░███╗░░░███╗███╗░░░███╗███████╗███╗░░██╗████████╗███████╗██████╗░
"████╗░██║██╔════╝██╔══██╗██╔══██╗  ██╔══██╗██╔══██╗████╗░████║████╗░████║██╔════╝████╗░██║╚══██╔══╝██╔════╝██╔══██╗
"██╔██╗██║█████╗░░██████╔╝██║░░██║  ██║░░╚═╝██║░░██║██╔████╔██║██╔████╔██║█████╗░░██╔██╗██║░░░██║░░░█████╗░░██████╔╝
"██║╚████║██╔══╝░░██╔══██╗██║░░██║  ██║░░██╗██║░░██║██║╚██╔╝██║██║╚██╔╝██║██╔══╝░░██║╚████║░░░██║░░░██╔══╝░░██╔══██╗
"██║░╚███║███████╗██║░░██║██████╔╝  ╚█████╔╝╚█████╔╝██║░╚═╝░██║██║░╚═╝░██║███████╗██║░╚███║░░░██║░░░███████╗██║░░██║
"╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═════╝░  ░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝

let NERDSpaceDelims=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Linting with Ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:flow#enable = 0
let g:flow#showquickfix = 0
let g:ale_sign_column_always = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
nmap <leader>h <Plug>(ale_fix)


function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}

" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

" neomake
nmap <Leader><Leader>o :lopen<CR>      " open location window
nmap <Leader><Leader>c :lclose<CR>     " close location window
nmap <Leader><Leader>, :ll<CR>         " go to current error/warning
" nmap <Leader>n :lnext<CR>      " next error/warning
" nmap <Leader>p :lprev<CR>      " previous error/warning

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
let g:prettier#autoformat_config_present = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show intens at the beginning of the line
" let g:indentLine_color_term = 236
" let g:indentLine_indentLevel = 50
let g:indentLine_faster = 1

" Customer tabline
function! CustomizedTabLine()
    let s = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
        let buflist = tabpagebuflist(i)
        let winnr = tabpagewinnr(i)
        let s .= '%' . i . 'T'
        let s .= (i == t ? '%1*' : '%2*')
        let s .= ' '
        let s .= i . ':'
        let s .= '%*'
        let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
        let file = bufname(buflist[winnr - 1])
        let file = fnamemodify(file, ':p:t')
        if file == ''
            let file = '[No Name]'
        endif
        let s .= file
        let s .= ' '
        let i = i + 1
    endwhile
    let s .= '%T%#TabLineFill#%='
    let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
    return s
endfunction

" Always show the tablilne
set stal=2
set tabline=%!CustomizedTabLine()

" Show line numbers
set number

" Make Y behave like other capitals
map Y y$

set clipboard+=unnamed " Yanks go on clipboard instead.

" relative line
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END



"███████╗░█████╗░░██████╗██╗░░░██╗███╗░░░███╗░█████╗░████████╗██╗░█████╗░███╗░░██╗
"██╔════╝██╔══██╗██╔════╝╚██╗░██╔╝████╗░████║██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║
"█████╗░░███████║╚█████╗░░╚████╔╝░██╔████╔██║██║░░██║░░░██║░░░██║██║░░██║██╔██╗██║
"██╔══╝░░██╔══██║░╚═══██╗░░╚██╔╝░░██║╚██╔╝██║██║░░██║░░░██║░░░██║██║░░██║██║╚████║
"███████╗██║░░██║██████╔╝░░░██║░░░██║░╚═╝░██║╚█████╔╝░░░██║░░░██║╚█████╔╝██║░╚███║
"╚══════╝╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚═╝░░░░░╚═╝░╚════╝░░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝
" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:ag_highlight = 1 "hightlight search terms after searching


"░█████╗░░█████╗░░█████╗░
"██╔══██╗██╔══██╗██╔══██╗
"██║░░╚═╝██║░░██║██║░░╚═╝
"██║░░██╗██║░░██║██║░░██╗
"╚█████╔╝╚█████╔╝╚█████╔╝
"░╚════╝░░╚════╝░░╚════╝░

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-x> to trigger completion.
inoremap <silent><expr> <c-x> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:solarized_termtrans = 1

let g:hanami_open_strategy = 'vsplit'

command! -nargs=0 Prettier :CocCommand prettier.formatFile

"███╗░░██╗██╗░░░██╗██╗███╗░░░███╗  ████████╗███████╗██████╗░███╗░░░███╗██╗███╗░░██╗░█████╗░██╗░░░░░
"████╗░██║██║░░░██║██║████╗░████║  ╚══██╔══╝██╔════╝██╔══██╗████╗░████║██║████╗░██║██╔══██╗██║░░░░░
"██╔██╗██║╚██╗░██╔╝██║██╔████╔██║  ░░░██║░░░█████╗░░██████╔╝██╔████╔██║██║██╔██╗██║███████║██║░░░░░
"██║╚████║░╚████╔╝░██║██║╚██╔╝██║  ░░░██║░░░██╔══╝░░██╔══██╗██║╚██╔╝██║██║██║╚████║██╔══██║██║░░░░░
"██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║  ░░░██║░░░███████╗██║░░██║██║░╚═╝░██║██║██║░╚███║██║░░██║███████╗
"╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚══════╝
  let g:term_buf = 0
  let g:term_win = 0
  let g:height = 12
  function! TermToggle()
      if win_gotoid(g:term_win)
          hide
      else
          botright new
          exec "resize " . g:height
          try
              exec "buffer " . g:term_buf
          catch
              call termopen($SHELL, {"detach": 0})
              let g:term_buf = bufnr("")
              set nonumber
              set norelativenumber
              set signcolumn=no
          endtry
          "set notermguicolors
          startinsert!
          let g:term_win = win_getid()
      endif
  endfunction
  nnoremap <leader>tt :call TermToggle()<CR>
  tnoremap <leader>tt <C-\><C-n>:call TermToggle()<CR>



"██████╗░██╗░░░░░░█████╗░███╗░░░███╗███████╗██████╗░
"██╔══██╗██║░░░░░██╔══██╗████╗░████║██╔════╝██╔══██╗
"██████╦╝██║░░░░░███████║██╔████╔██║█████╗░░██████╔╝
"██╔══██╗██║░░░░░██╔══██║██║╚██╔╝██║██╔══╝░░██╔══██╗
"██████╦╝███████╗██║░░██║██║░╚═╝░██║███████╗██║░░██║
"╚═════╝░╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚═╝
" Enables blamer on (neo)vim startup.
let g:blamer_enabled = 1
" Enables / disables blamer in visual modes.
let g:blamer_show_in_visual_modes = 0


"██████╗░░█████╗░██╗███╗░░██╗██████╗░░█████╗░░██╗░░░░░░░██╗
"██╔══██╗██╔══██╗██║████╗░██║██╔══██╗██╔══██╗░██║░░██╗░░██║
"██████╔╝███████║██║██╔██╗██║██████╦╝██║░░██║░╚██╗████╗██╔╝
"██╔══██╗██╔══██║██║██║╚████║██╔══██╗██║░░██║░░████╔═████║░
"██║░░██║██║░░██║██║██║░╚███║██████╦╝╚█████╔╝░░╚██╔╝░╚██╔╝░
"╚═╝░░╚═╝╚═╝░░╚═╝╚═╝╚═╝░░╚══╝╚═════╝░░╚════╝░░░░╚═╝░░░╚═╝░░

let g:rainbow_active = 1


