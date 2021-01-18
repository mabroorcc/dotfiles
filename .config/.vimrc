"Mappings
nmap <space>fm :Prettier<return>
nmap <space>pi :PlugInstall<return>
nmap <space>of :GFiles<return>
nmap <space>es :vsp ~/.vim/snippets/<return>
nmap <space>vs :vsp .<return>
nmap <space>sn :Snippets<return>
nmap <space>vc :e ~/.vimrc<return>
nmap <space>rc :so ~/.vimrc<return>
nmap <space>s :w<return>
nmap <space>q :q<return>
nmap <space>f gt
nmap <space>d gT
inoremap jk <esc>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <space>n :NERDTreeToggle<CR>
" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K


" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>



" Auto bracket close "
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Plugins 
call plug#begin()

" Language Specific "
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " golang

" Colored Brackets "
Plug 'frazrepo/vim-rainbow'

" Code completion "
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' } " Auto complete

" Code formating"
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript','tsx','jsx', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] } " Auto formating

" Theme"
Plug 'glepnir/oceanic-material'

" File explorer "
Plug 'preservim/nerdtree' " File tree

" Code commentor "
Plug 'preservim/nerdcommenter' " Commenting code

" Fuzzy File Search "
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Snippets "
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Icons in nerd-tree"
Plug 'ryanoasis/vim-devicons'

call plug#end()

"Global variables 
let g:coc_global_extensions = [ 'coc-tsserver' ]
let g:NERDTreeWinPos = "right"
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let g:coc_filetype_map = 0
let g:oceanic_material_transparent_background=1
" Snippets settings "
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Settings
syntax on
colorscheme oceanic_material
set numberwidth=4
set ruler
set shiftwidth=2
set tabstop=2
set softtabstop=2 "Number of spaces a tab counts when editing
set nowritebackup
set relativenumber
set nu
set nohlsearch
set noerrorbells
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set cmdheight=1

set splitbelow splitright
hi Normal guibg=NONE ctermbg=NONE

" Color and themeing "
highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=none    cterm=none
highlight VertSplit        ctermfg=0    ctermbg=none    cterm=none
highlight Statement        ctermfg=2    ctermbg=none    cterm=none
highlight Directory        ctermfg=4    ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7    ctermbg=none    cterm=none
highlight StatusLineNC     ctermfg=7    ctermbg=none    cterm=none
highlight NERDTreeClosable ctermfg=2
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4    ctermbg=none    cterm=italic
highlight Constant         ctermfg=12   ctermbg=none    cterm=none
highlight Special          ctermfg=4    ctermbg=none    cterm=none
highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
highlight String           ctermfg=12   ctermbg=none    cterm=none
highlight Number           ctermfg=1    ctermbg=none    cterm=none
highlight Function         ctermfg=1    ctermbg=none    cterm=none


"syntax sync fromstart
augroup ReactFiletypes
  autocmd!
  autocmd BufRead,BufNewFile *.jsx set filetype=javascriptreact
  autocmd BufRead,BufNewFile *.tsx set filetype=typescriptreact
augroup END
