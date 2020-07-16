" set the runtime path to include Vundle and initialize
set wrap!
set timeoutlen=250
set ttimeoutlen=0
"set esckeys
set noswapfile
set hlsearch
let mapleader = "º"
"coc need this
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

"---------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" general 
Plugin 'scrooloose/syntastic'
Plugin 'neoclide/coc.nvim'

"Bundle 'Townk/vim-autoclose'
"Bundle 'thisivan/vim-bufexplorer' 
""Bundle 'xolox/vim-easytags'
""Bundle 'majutsushi/tagbar'
""Bundle 'techlivezheng/tagbar-phpctags'

"---	 	IDE PLUGINS 			----
Bundle 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'taglist.vim'

"---		DEBUG					----
Plugin 'joonty/vdebug'

"Bundle 'scrooloose/nerdcommenter.git'
"Bundle 'tpope/vim-fugitive'
"Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-eunuch'
"Bundle 'tpope/vim-markdown'
"Bundle 'tpope/vim-endwise'
"Bundle 'sukima/xmledit.git'
"Bundle 'vim-scripts/matchit.zip'
"Bundle 'Lokaltog/vim-easymotion'

"File fuzzy search
"Bundle 'kien/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required

"--------------------
" for php
"--------------------
Plugin '2072/PHP-Indenting-for-VIm'
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'arnaud-lb/vim-php-namespace'
"Bundle 'shawncplus/phpcomplete.vim'
"Note: The follow plugin may cause wrong display of block comment
"Bundle 'shawncplus/php.vim'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'erikfercak/php-search-doc'
Bundle 'lucapette/vim-jquery-doc'

"--------------------
" for html, haml, sass
"--------------------
Plugin 'othree/html5.vim'
Bundle 'tpope/vim-haml'

"--------------------
" for javascript
"--------------------
Bundle 'pangloss/vim-javascript'
Bundle 'itspriddle/vim-jquery'
"Bundle 'hallettj/jslint.vim'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

"""console
"
set number
set tabstop=4

set guifont=Fira\ Code:h12
set nocompatible
set cursorline
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=red

"""theme
"
colorscheme odyssey

">>>>>>>>>>>>>>>>othree/html5 plugin>>>>>>>>>>>>>>>>>
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"Disable event-handler attributes support:
let g:html5_event_handler_attributes_complete = 0
"Disable RDFa attributes support:
let g:html5_rdfa_attributes_complete = 0
"Disable microdata attributes support:
let g:html5_microdata_attributes_complete = 0
"Disable WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 0

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"			scrooloose/syntastic - check for languages sintaxis
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"				PHP-indent 2072						 
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
let g:PHP_autoformatcomment = 0



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"					NERD-TREE						 
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-b> :NERDTreeToggle<CR>


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"-- 			comment highlight					
"">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
highlight Comment ctermfg= 9
"highlight Comment ctermbg=grey

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"						COC						
"<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
let g:coc_disable_startup_warning = 1

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"						 REMAPS
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
nnoremap <leader>4 :wincmd h<CR>
nnoremap <leader>6 :wincmd l<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
