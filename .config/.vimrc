"Mappings
nmap <space>p :Prettier<return>
nmap <space>m :e ~/.vimrc<return>
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

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Plugins 
call plug#begin()
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'vim-scripts/Rainbow-Parenthesis' " colorfull brackets
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' } " Auto complete
Plug 'glepnir/oceanic-material'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript','tsx','jsx', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] } " Auto formating
Plug 'preservim/nerdtree' " File tree
Plug 'preservim/nerdcommenter' " Commenting code
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " golang
call plug#end()

"Global variables let g:coc_global_extensions = [ 'coc-tsserver' ]
let g:NERDTreeWinPos = "right"
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let g:coc_filetype_map = 0
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx'
let g:oceanic_material_transparent_background=1

" Settings
syntax on
colorscheme oceanic_material

set numberwidth=4
set ruler
set shiftwidth=2
set tabstop=2
set softtabstop=2 " Number of spaces a tab counts when editing
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
set completeopt=menuone,noinsert,noselect
set cmdheight=1
hi Normal guibg=NONE ctermbg=NONE

"syntax sync fromstart

augroup ReactFiletypes
  autocmd!
  autocmd BufRead,BufNewFile *.jsx set filetype=javascriptreact
  autocmd BufRead,BufNewFile *.tsx set filetype=typescriptreact
augroup END
