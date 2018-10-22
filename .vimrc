"set encoding=UTF-8

"higlighting syntax 
syntax on

set nowrap
" highlight current line
"set cursorline

"auto numbering
set number

"indentasi buat ruby dan all 
set expandtab
set shiftwidth=2
set tabstop=2

"set smartindent
filetype plugin indent on

"indentasi buat php
autocmd Filetype php,html,javascript setlocal shiftwidth=4 tabstop=4

set t_Co=256

"highlight Normal ctermbg=black ctermfg=white

"colorscheme favorit gruvbox
"set termguicolors 
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
"let g:gruvbox_italic=1

"colorscheme favorit kedua 
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

"colorscheme cobalt2


"set termguicolors     " enable true colors support
"let ayucolor="mirage" " for mirage version of theme
"colorscheme ayu

"set termguicolors
"colorscheme Tomorrow-Night

"set background=dark
"colorscheme PaperColor



"mapping _vimrc (untuk membuka _vimrc cuku ketikan ,c )
let mapleader = ","
nmap <Leader>c :tabedit $MYVIMRC<cr>

"berpindah buffer (untuk berpindah buffer cukup ketikan ,f = next  ,d = previous)
nmap <Leader>f :bn<cr>  
nmap <Leader>d :bp<cr>
"mapping dengan vim-bufkill
nmap <Leader>s :BD<cr> 
"nmap <Leader>s :bd<cr>

"Instalasi Plugin Menggunakan Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'  "digunakan untuk  menuju ke folder dimana file yang sedang kita buka berada menggunakan tombol -
Plugin 'morhetz/gruvbox'
Plugin 'ayu-theme/ayu-vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'herrbischoff/cobalt2.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'jwalton512/vim-blade'
Plugin 'qpkorr/vim-bufkill' "digunakan agar ketika menutup buffer, split yang ada tidak akan tertutup
Plugin 'shougo/neocomplcache.vim' "plugin buat autocomplete
Plugin 'ctrlpvim/ctrlp.vim' "digunakan untuk melakukan pencarian file
Plugin 'tpope/vim-fugitive' "show master atau branch
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'

call vundle#end()

"tabline (biar saat buka tidak tertumpuk dalam 1 file akan membuka buffer baru)
let g:airline#extensions#tabline#enabled = 1

"menyingkat nama file dalam tabline
let g:airline#extensions#tabline#fnamemod = ':t'

"menampilkan tanggal dan waktu
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'

"agar satu window pun tetap akan dimunculkan bar-nya
set laststatus=2

"custom untuk bukua nerdtre cuku dengan ctrl + n
map <C-n> :NERDTreeToggle<CR>

"show hidden file NERDTree 
"let NERDTreeShowHidden=1

"search hidden file using ctrlp .dotfiles
let g:ctrlp_show_hidden = 1 

"This works on Linux Ubuntu\ 11
"setlocalt guifont=Inconsolata\ 8
set guifont=FantasqueSansMono\ 9

"seting plugin emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall
"let g:user_emmet_leader_key='<C-Z>'

"jadi bisa menggunakan tab
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"agar bisa menjalankan emmet di rails view
autocmd BufNewFile,BufRead *.html.erb set filetype=html

" Buat Laravel Blade Highliter
let g:blade_custom_directives = ['datetime', 'javascript', 'php', 'html']
autocmd BufNewFile,BufRead *.blade.php set ft=html | set ft=phtml | set ft=blade " Fix blade auto-indent

"set permanent airlines themes (powerlineish)
"base16_spacemacs
"Gruvbox & powerlineish
"Tomorrow-Night &  molokai
"PaperColor & luna
"let g:airline_theme = 'murmur'
let g:airline_theme = 'powerlineish'

"set plugin autocomplete
let g:neocomplcache_enable_at_startup = 1



"agar saat copy & paste tidak berantakan 
:set paste
"referensi
"https://unix.stackexchange.com/questions/199203/why-does-vim-indent-pasted-code-incorrectly
"mode insert paste kode
:set nopaste
"turon on and of paste  fn + F2
set pastetoggle=<F2>

"custom pindah window jadi untuk pindah antar window tidak perlu lagi ctrl + w ctrl + l 
"langusung saja misalkan mau pindah ke windo kanan tekan ctrl + l jadi awalan ctrl + w telah di hilangkan
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>


"shitf-tab to un-indent in normal mode
nnoremap <S-Tab> <<

"shift-tab to un-indent in insert mode 
inoremap <S-Tab> <C-d>


"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/ 

"air-line setting symbol 
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10

" search sets
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
"set smartcase                                                " case-sensitive search if any caps

let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let g:javascript_plugin_flow = 1

