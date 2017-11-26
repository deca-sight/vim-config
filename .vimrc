"######## Configuracion Global
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/mpc
set runtimepath+=~/.vim/mpc
call vundle#begin()
"Plugins{{{1
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'

Plugin 'gmarik/Vundle.vim'                  " revisado
Plugin 'davidhalter/jedi-vim'               " 
"Plugin 'powerline/powerline'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'                " 
Plugin 'kien/ctrlp.vim'                     " 
Plugin 'tpope/vim-surround'                 " 
Plugin 'Yggdroot/indentLine'                " 
Plugin 'mattn/emmet-vim'
Plugin 'ap/vim-css-color'
Plugin 'elzr/vim-json'                      " 
Plugin 'othree/html5.vim'
Plugin 'rstacruz/sparkup'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'ntpeters/vim-airline-colornum'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'vasconcelloslf/vim-interestingwords'
Plugin 'ryanoasis/vim-devicons'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'mbbill/undotree'
" For CSS
Plugin 'tpope/vim-haml'
" Plugins Snip{{{2
Plugin 'SirVer/ultisnips'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" Plugins Templates{{{2
Plugin 'noahfrederick/vim-skeleton'
" Plugins Delimiters{{{2
Plugin 'Raimondi/delimitMate'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'JulesWang/css.vim'
"Plugin 'rstacruz/sparkup'
" Plugin for arduino{{{2
Plugin '4Evergreen4/vim-hardy'
Plugin 'jplaut/vim-arduino-ino'
Plugin 'https://github.com/z3t0/arduvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" =============================================================================
" Basic {{{1
" Search{{{2
set incsearch	" 
set ignorecase	" la busqueda se realizara sin case sensitive
set hlsearch	" me marcara con un color todos los resultados de la busqueda
set smartcase
" Indent{{{2
set smartindent
" Buffer{{{2
" Input{{{2
" Command{{{2
" Miscellaneous{{{2
"
filetype plugin indent on    " required
set nowrap              " no corta las lineas
set expandtab   " habilita los tabs ">/<"
set shiftwidth=4
set softtabstop=4
"let mapleader = ","
"syntax enable
"set autoindent
set fileencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start
set gdefault
set showmatch
set winheight=5
set winminheight=5
set winheight=999
set nolist
set noswapfile
set visualbell
set cc=80
set wildmenu   " visual autocomplete for command menu
" Folding{{{1
" =============================================================================
set foldmethod=marker
set foldcolumn=3
" =============================================================================
" Appearance{{{1
" =============================================================================
set cursorline          " highlight current line
syntax on	        " habilita color en la sintaxis
set number	        " habilita los numeros por linea

set background=dark     " Dark background
color wombat256i
set t_Co=256            " 256 colors

" Configuracion Avanzada {{{1
" habilitar el auto-reload del .vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Powerline{{{1
set encoding=utf-8
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
" Plugin NERDtree{{{1
map <C-n> :NERDTreeToggle<CR>

" Show syntax highlighting groups for word under cursor
"nmap <C-S-P> :call <SID>SynStack()<CR>
"function! <SID>SynStack()
"    if !exists("*synstack")
"        return
"    endif
"    echo map(synstack(line(','), col(',')), 'synIDattr(v:val,"name")')
"endfunc

"set fdm=syntax
"set fdm=marker
" Plugin Ctrl-P{{{1

" Plugin iconos{{{1
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12

" vim-Snipmate{{{1
"imap <C-1> <Plug>snipMateNextOrTrigger
"smap <C-1> <Plug>snipMateNextOrTrigger

"Configuracion Python {{{1



"Configuracion Ruby{{{1
au BufRead,BufNewFile *.ru setfiletype ruby

set previewheight=20

" Configuracion C {{{1
" Configuracion HTML {{{1
" Configuracion Assembler {{{1
" Configuracion CSS3 {{{1
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"augroup VimCSS3Syntax
"    autocmd!
"        autocmd FileType css setlocal iskeyword+=-
"augroup END


nmap <silent>  ;v  :next $MYVIMRC<CR>
augroup VimReload
    autocmd!
    autocmd BufWritePost  $MYVIMRC  source $MYVIMRC
augroup END

" Plugin notes:{{{1
let g:notes_directories = ['/home/deca/Notas']
let g:notes_suffix = '.txt'


" Practicando viml {{{1

let g:quote = "global deca"
func! EchoQuote(quote, ...)
    "let l:quote = 'local Deca Sight'
    let year = a:1
    let author = a:000[1]
    echo 'in ' . year . ', ' . author . ' said: "' . a:quote . '"'
endfunc

let Example = function('EchoQuote')
let q = "This crocodile"
"echo call(Example, [q,'2014',"Deca Sight"])
"echo string(Example)
let animalKingdom = ['Crocodile', 'Lizard', 'Bug', 'Squid']
call add(animalKingdom,'Penguin')
call remove(animalKingdom,3)
call insert(animalKingdom,'Octopus',3)
call sort(animalKingdom)
let c = {'Retxab': 'Alfred Clark','Nielk': 'Bill von cook'}
"echo c['Retxab']
"while len(animalKingdom) > 0
"    echo animalKingdom[0] . ' Friend'
"    call remove(animalKingdom,0)
"endwhile
for animal in animalKingdom
    echo "Es un " . animal
endfor











































