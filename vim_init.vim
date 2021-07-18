"source ~/.vim/init.vim

source $VIMRUNTIME/defaults.vim
set encoding=utf-8
set termbidi
set guifont=Hack:h12
syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set smarttab
set autoindent
set smartindent
"set cindent

"Plug pkgman
call plug#begin('~/.vim/plugged')

"fugitive git plugin
Plug 'tpope/vim-fugitive'
"vim-gitgutter git plugin
""Plug 'airblade/vim-gitgutter'
"git change line in source
Plug 'mhinz/vim-signify'

"fzf plugin , fuzzy finder
Plug 'junegunn/fzf.vim'

"coc lsp
"Plug 'neoclide/coc.nvim', {'branch': 'release'}


"language plugins
Plug 'dart-lang/dart-vim-plugin'
Plug 'rust-lang/rust.vim'

"nerd tree
Plug 'scrooloose/nerdtree'

"tag bar
Plug 'majutsushi/tagbar'

"color schemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'acarapetis/vim-colors-github'
Plug 'arcticicestudio/nord-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'rakr/vim-one'
Plug 'junegunn/seoul256.vim'
Plug 'jnurmine/zenburn'
Plug 'kaicataldo/material.vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'whatyouhide/vim-gotham'

"bufferline
"Plug 'bling/vim-bufferline'

"nerd font
Plug 'ryanoasis/vim-devicons'

"fuzzy command
Plug 'wincent/command-t'

"surround
Plug 'tpope/vim-surround'

"extended text object
Plug 'wellle/targets.vim'


"startup screen
"Plug 'mhinz/vim-startify'

"async make
Plug 'neomake/neomake'

"async build and test
Plug 'tpope/vim-dispatch'

"running async shell command
Plug 'skywind3000/asyncrun.vim'

"jump to any location, powerful motion
Plug 'justinmk/vim-sneak'

"easy motion
Plug 'easymotion/vim-easymotion'

"align text automaticaly
Plug 'godlygeek/tabular'
"markdown syntax
Plug 'plasticboy/vim-markdown'

"all insert mode completions with tab
"Plug 'ervandew/supertab'

"syntax checking
"Plug 'scrooloose/syntastic'

"comment assist
Plug 'tpope/vim-commentary'

"popup terminal
"Plug 'voldikss/vim-floaterm'

"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
set background=dark
"set background=light
"colorscheme PaperColor
"colorscheme dracula
"colorscheme solarized
"colorscheme solarized8
"list of best theme:
"+gruvbox ++gruvbox-material +jellybeans +onedark ++seoul256 ++solarized8_flat ++sonokai +zenburn

autocmd vimenter * ++nested colorscheme sonokai
"one halfdark
"syntax on
"set t_Co=256
"set cursorline
"colorscheme onehalfdark
"let g:airline_theme='sonokai'



"let g:airline_theme='minimalist'
"let g:airline_theme='papercolor'
"let g:airline_theme='bubblegum'

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


"powerline symbol
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1

"let g:airline_extensions = ['branch', 'tabline']
let g:airline_extensions = ['tabline', 'branch', 'term', 'fugitiveline', 'fzf']
"let g:airline#extensions#disable_rtp_load = 1
"let g:airline#extensions#tabline#formatter = 'default'
"set tabstop=4

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#bufferline#enabled = 1
"let g:bufferline_echo = 1
"let g:bufferline_active_highlight = 'StatusLine'

"include coc config
"source ~/.vim/cocvimrc.vim

"let g:dart_format_on_save = 1
"let g:dart_style_guide = 4


" let g:airline#extensions#coc#enabled = 1
" let airline#extensions#coc#error_symbol = 'E:'
" let airline#extensions#coc#warning_symbol = 'W:'
" let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
" let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set relativenumber
augroup END

"insert matching pair
"inoremap {<CR> {<CR>}<c-o>O
"inoremap {     {}<Left>
"inoremap {}    {}<BS>
"inoremap {<TAB> {}
"inoremap {<BS> <NOP>
"inoremap [<CR> [<CR>]<c-o>O
"inoremap [     []<Left>
"inoremap []    []<BS>
"inoremap [<TAB> []
"inoremap [<BS> <NOP>
"inoremap (<CR> (<CR>)<c-o>O
"inoremap (     ()<Left>
"inoremap ()    ()<BS>
"inoremap (<TAB> ()
"inoremap (<BS> <NOP>
"inoremap "<CR> "<CR>"<c-o>O
"inoremap "     ""<Left>
"inoremap ""    ""<BS>
"inoremap "<TAB> ""
"inoremap "<BS> <NOP>
"inoremap '<CR> '<CR>'<c-o>O
"inoremap '     ''<Left>
"inoremap ''    ''<BS>
"inoremap '<TAB> ''
"inoremap '<BS> <NOP>
"inoremap <<CR> <<CR>><c-o>O
"inoremap <     <><Left>
"inoremap <>    <><BS>
"inoremap <<TAB> <>
"inoremap <<BS> <NOP>
"delete match pair
"let g:couples = ['(#)', '[#]', '{#}', '<#>', '<div>#</div>']
"function BetterBS()
"
"    for l:couple in g:couples
"        if ! (l:couple =~ '#')
"            continue
"        endif
"        let l:regex = substitute(escape(l:couple, '/\^$*.[~'), '#', '\\%#', '')
"        if search(l:regex, 'n')
"            let l:out = repeat("\<BS>", len(matchstr(l:couple, '^.\{-}\ze#')))
"            let l:out .= repeat("\<DEL>", len(matchstr(l:couple, '#\zs.\{-}$')))
"            return l:out
"        endif
"    endfor
"
"    return "\<BS>"
"endfunction
"inoremap <silent> <BS> <C-r>=BetterBS()<CR>

au FileType * let b:AutoPairs = AutoPairsDefine({'<' : '>'})
au Filetype cpp let b:AutoPairs={'(':')', '[':']', '{':'}','"':'"', '`':'`'}

hi TreeSitter ctermbg=red
