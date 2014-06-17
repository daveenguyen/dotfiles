" Workaround for using fish with NeoBundle
if &shell =~# 'fish$'
    set shell=sh
endif

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-commentary'

" Required:
call neobundle#end()

" Required:
" Filetype auto-detection
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

syntax on

" Tabs settings--------------------------------
set tabstop=4     " number of spaces for tab character
set shiftwidth=4  " number of spaces to (auto)indent
set softtabstop=4
set expandtab     " use spaces instead of tabs.
set smarttab      " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround    " tab / shifting moves to closest tabstop.
set autoindent    " Match indents on new lines.
set smartindent   " Intellegently dedent / indent new lines based on rules.

" We have VCS -- we don't need this stuff.
set nobackup      " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile    " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden        " allow me to have buffers with unsaved changes.
set autoread      " when a file has changed on disk, just load it. Don't ask.


" Search Settings - Make search more sane------
set ignorecase    " case insensitive search
set smartcase     " If there are uppercase letters, become case-sensitive.
set incsearch     " live incremental searching
set showmatch     " live match highlighting
set hlsearch      " highlight matches
set gdefault      " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
let mapleader = ","


" Mappings-------------------------------------
" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

" So we don't have to reach for escape to leave insert mode.
inoremap jf <esc>

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

" Clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>


" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

" Plugin settings:
" Below are some 'sane' (IMHO) defaults for a couple of the above plugins I
" referenced.

" Map the key for toggling comments with vim-commentary
" nnoremap <leader>c <Plug>CommentaryLine


" Finally the color scheme. Choose whichever you want from the list in the
" link above (back up where we included the bundle of a ton of themes.)
set background=dark
colorscheme base16-eighties



set number
set ruler " show cursor position all the time
set encoding=utf-8

" Show trailing spaces as '·'
set list listchars=tab:»·,trail:·

" Remove trailing whitespaces for specific filetypes upon :w
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

" if have mouse, enable
if has('mouse')
    set mouse=a
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Always show status bar for vim-airline
set laststatus=2

