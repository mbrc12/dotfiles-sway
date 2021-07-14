call plug#begin()

" Plug 'flazz/vim-colorschemes'

" Plug 'sonph/onehalf'

" Plug 'wfxr/minimap.vim'

" Plug 'Xuyuanp/scrollbar.nvim'

" Plug 'rainglow/vim'

Plug 'AlessandroYorba/Alduin'

Plug 'Lokaltog/vim-monotone'

Plug 'arzg/vim-colors-xcode'

Plug 'vim-scripts/eclipse.vim'

Plug 'rakr/vim-two-firewatch'

Plug 'junegunn/seoul256.vim'

Plug 'tssm/fairyfloss.vim'

Plug 'adelarsq/vim-grimmjow'

Plug 'lifepillar/vim-gruvbox8'

Plug 'ayu-theme/ayu-vim'

Plug 'romainl/flattened'

Plug 'lifepillar/vim-colortemplate'

" -------------------

" Plug 'takac/vim-hardtime'

" ------------------

Plug 'mbbill/undotree'

" Plug 'tpope/vim-surround'

Plug 'gauteh/vim-evince-synctex' 

Plug 'lervag/vimtex'

" Plug 'LaTeX-Box-Team/LaTeX-Box'

" Plug 'vimlab/split-term.vim'

Plug 'tpope/vim-fireplace', { 'for' : 'clojure' }

Plug 'preservim/nerdtree'

Plug 'ervandew/supertab'

Plug 'tpope/vim-commentary'

Plug 'AndrewRadev/bufferize.vim'

Plug 'tpope/vim-fugitive'

Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }

" Plug 'itchyny/vim-haskell-indent'

" Plug 'enomsg/vim-haskellConcealPlus'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'dbakker/vim-projectroot'

Plug 'dag/vim-fish'

Plug 'neovimhaskell/haskell-vim'


Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'


" Plug 'easymotion/vim-easymotion'



" Plug 'habamax/vim-asciidoctor'

Plug 'psliwka/vim-smoothie'

Plug 'keith/swift.vim'

Plug 'mhartington/oceanic-next'

Plug 'MaxMEllon/vim-jsx-pretty'

Plug 'pangloss/vim-javascript'

Plug 'habamax/vim-godot'

Plug 'tbastos/vim-lua'




" Plug 'OmniSharp/omnisharp-vim'

" Plug 'mbrc12/vim-autoswap'

call plug#end()

" Give me a hard time -------------
" let g:hardtime_default_on = 1
" ---------------------------------

" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

" Needed for scrollbar.nvim
" augroup ScrollbarInit
"   autocmd!
"   autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"   autocmd WinLeave,FocusLost             * silent! lua require('scrollbar').clear()
" augroup end


" set backupdir=C:/Users/Mriganka/Software/nvim-win64/backup/


function! ToggleCul()
    set cul! 
    redraw
endfunction

autocmd InsertEnter,InsertLeave * call ToggleCul()

tnoremap <Esc> <C-\><C-n>

" setlocal conceallevel=2

set ruler
set nocompatible
set ff=unix

" let g:asyncomplete_auto_popup=0
" inoremap <expr> <C-p>   pumvisible() ? "\<C-n>" : "\<Tab>"


filetype plugin on
set omnifunc=syntaxcomplete#Complete

filetype indent plugin on
syntax on

set incsearch
set hlsearch
" set number relativenumber
set number
set cursorline
set nowrap
set termguicolors

set nofoldenable
set foldmethod=manual

set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set wildmenu

let g:SuperTabDefaultCompletionType='<c-x><c-o>'
autocmd CompleteDone * pclose

" if system('date +%H') >= 17
"     set background=dark
" else
"     set background=light
" endif

" colorscheme fairyfloss

" let g:seoul256_background = 256
" colorscheme seoul256

" set background=light
" colorscheme 

" colorscheme flattened_dark

" set background=light
" let g:xcodelight_match_paren_style=1
" colorscheme xcodelight

" colorscheme xcodelight
" colorscheme OceanicNext

" colorscheme alduin

" colorscheme gruvbox8_hard

colorscheme ayu

" let g:monotone_color = [314, 20, 90]
" colorscheme monotone

set noerrorbells

" " colorscheme gotham256
" colorscheme xcode

" colorscheme fairyfloss

nmap <silent> -w :w<CR>

" Commenting using vim-commentary
nmap <silent> ; gccj
vmap <silent> ; gc 

nmap <silent> -n :noh<CR>

" set clipboard+=unnamedplus
nmap <silent> -p "+p
vmap <silent> -y "+y

let mapleader = " "
set backspace=indent,eol,start

nmap <silent> -- zA
nmap <silent> -ec :tabnew /home/mbrc/.config/nvim/init.vim<CR>


nnoremap <silent> -T :term ++rows=10 fish<CR>

function! TexMode()
    set wrap
    " nnoremap <Down> gj
    " nnoremap <Up> gk
    " vnoremap <Down> gj
    " vnoremap <Up> gk
    " inoremap <Down> <C-o>gj
    " inoremap <Up> <C-o>gk
    inoremap <Home> <C-o>g<Home>
    inoremap <End>  <C-o>g<End>
    
    nnoremap j gj
    nnoremap k gk
    vnoremap j gj
    vnoremap k gk
    " inoremap j <C-o>gj
    " inoremap k <C-o>gk
endfunction

function! TexModeOff()
    set nowrap
    nnoremap <Down> <Down>
    nnoremap <Up> <Up>
    vnoremap <Down> <Down>
    vnoremap <Up> <Up>
    inoremap <Down> <Down>
    inoremap <Up> <Up>
    inoremap <Home> <Home>
    inoremap <End> <End>
endfunction

" ------------ LATEXBOX -----------------"
" imap ]] <Plug>LatexCloseCurEnv
" let g:LatexBox_latexmk_preview_continuously=1
" let g:LatexBox_quickfix=2

" ------------ VIMTEX ------------------- "

nnoremap -tt :VimtexCompile<CR>
nnoremap -tv :VimtexView<CR>

let g:tex_flavor = "latex"
let g:Tex_IgnoredWarnings = 
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n"

let g:Tex_IgnoreLevel = 8
" set guifont=Menlo:h18
" set guioptions=
" let g:vimtex_view_method = 'qpdfview'
" let g:vimtex_compiler_progname = 'nvr'
" let g:vimtex_view_general_viewer = 'evince'
" let g:vimtex_view_general_options
"             \ = '--unique @pdf\#src:@tex:@line:@col'
" let g:vimtex_view_general_options_latexmk = '--unique'

nnoremap -ff :VimtexForwardSearch<CR>
" ------------- VIMTEX ends ----------------- "

nmap <silent> -tex :call TexMode()<CR>
nmap <silent> -oth :call TexModeOff()<CR>

" ------------- Disable copying behavior of d ----------

xnoremap <silent> d "_d
nnoremap <silent> dd "_dd

" ------------------------------------------------------


nmap <silent> `!! 1gt
nmap <silent> `@@ 2gt
nmap <silent> `## 3gt
nmap <silent> `$$ 4gt

" let g:lsp_semantic_enabled=1
" let g:lsp_diagnostics_echo_cursor = 1
" nmap <silent> <leader>= :LspHover<CR>
" nmap <silent> <leader>-i :tab LspImplementation<CR>
" nmap <silent> <leader>] :LspNextError<CR>
" nmap <silent> <leader>[ :LspPreviousError<CR>
" nmap <silent> <leader>; :LspNextWarning<CR>
" nmap <silent> <leader>' :LspPreviousWarning<CR>

nmap <silent> -u :UndotreeToggle<CR>

nmap <silent> -d :ProjectRootExe NERDTreeToggle<CR>

nmap <silent> -am :Bufferize messages<CR>

nmap <silent> -eb :%Eval<CR>
vmap -ee :Eval<CR>
nmap -ee :Eval<CR>

" xnoremap "+y y:call system("wl-copy", @")<cr>
" nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
" nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p

function! NewFile() 
    call inputsave()
    let l:fn = input("Tab file [<CR> to cancel] ? ", "", "file")
    call inputrestore()
    if l:fn == ""
        echo "Cancelled"
    else 
        let l:cmd = "tabnew ".l:fn
        call execute(l:cmd)
    endif 
endfunction 

nmap <silent> `TT :call NewFile()<CR>


map <Leader> <Plug>(easymotion-prefix)

augroup MatlabFix
    autocmd!
    autocmd BufNewFile,BufRead *.m setlocal commentstring=%\ %s
augroup END 

" set runtimepath+=/home/mbrc/dev/supersede

set guioptions=
"set backspace=indent,eol,start

autocmd GUIEnter * set vb t_vb=

