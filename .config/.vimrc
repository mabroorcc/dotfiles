"Mappings
nmap <space>f :Prettier<return>
nmap <space>m :e ~/.vimrc<return>
nmap <space>n :NERDTree<return>
nmap <space>s :w<return>
nmap <space>q :q<return>
inoremap jk <esc>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <space>n :NERDTreeToggle<CR>


" Plugins 
call plug#begin()
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'glepnir/oceanic-material'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'preservim/nerdtree'
call plug#end()


"Global variables
let g:coc_global_extensions = [ 'coc-tsserver' ]
let g:oceanic_material_transparent_background = 1


" Settings
syntax on
colorscheme oceanic_material
set number
set numberwidth=4
set ruler
set relativenumber

set shiftwidth=2
set tabstop=2
set softtabstop=2 " Number of spaces a tab counts when editing
set expandtab

set nobackup
set nowritebackup
set noswapfile

set ignorecase " Ignore case when searching
set smartcase  " When searching try to be smart about cases
set nohlsearch " Don't highlight search term
set incsearch  " Jumping search

filetype off
