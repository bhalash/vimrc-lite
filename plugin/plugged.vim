""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off

if has('nvim')
  call plug#begin(stpath('config') . '/extensions')
else
  call plug#begin('$HOME/.vim/extensions')
endif

" RAWEAJEFLSEFASLefSJEFSefsef DEATH TO WHITESPACES
Plug 'bronson/vim-trailing-whitespace'

" Provide additional text targets for di/a<char>:
" , . ; : + - = ~ _ * # / | \ & $
Plug 'wellle/targets.vim'

" Provide motion keyed to gs<motion> to sort stuff.
Plug 'christoomey/vim-sort-motion'

" Text object for current level of indentation.
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'

" Better FfTt action.
Plug 'unblevable/quick-scope'

" Auto CD to project root.
Plug 'airblade/vim-rooter'

" Quickly change wrapping characters with cs<char>.
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-sort-motion'

" Case-insensitive replacement
Plug 'tpope/vim-abolish'

" Authoring (Markdown and article writing).
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

" Auto pair brackets, like.
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag', { 'for': 'html' }

" Toggle comments.
Plug 'tomtom/tcomment_vim'

" git project management
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"HTML expansion.
Plug 'mattn/emmet-vim'

" Colorscheme.
Plug 'rafi/awesome-vim-colorschemes'
Plug 'mcchrish/vim-no-color-collections'

" Syntax highlighting.
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
Plug 'martinda/Jenkinsfile-vim-syntax'

" File finder.
Plug 'ctrlpvim/ctrlp.vim'

" Linting and tab completion.
Plug 'ervandew/supertab'

" Nice fast background grepping.
Plug 'mhinz/vim-grepper'
Plug 'haya14busa/vim-asterisk'

" Enforce .editorconfig.
Plug 'editorconfig/editorconfig-vim'

" Settings for vim-qt on Windows.
Plug 'equalsraf/neovim-gui-shim'

" File navigation.
Plug 'preservim/nerdtree'

" Task list, because I have nothing else available at work. :(
Plug 'vuciv/vim-bujo'

" Because eh?
Plug 'itchyny/lightline.vim'
Plug 'yarisgutierrez/ayu-lightline'

call plug#end()

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airblade/vim-rooter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Silently auto CD to the root folder of the current git project.
let g:rooter_silent_chdir = 1

" Only highlight keys when the appropriate key is depressed.
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" junegunn/goyo.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:goyo_width = 170
let g:goyo_height = 90
let g:goyo_linenr = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp/ctrlp.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Keep cache on exit. I tend to clear it by hand anyhow.
let g:ctrlp_clear_cache_on_exit = 0

" Allow ctrlp to match already-open file. It goes to the file's buffer.
let g:ctrlp_switch_buffer = 'et'

" Respect .gitignore.
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Search from folder with .git
let g:ctrlp_working_path_mode = 'ra'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vuciv/vim-bujo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:bujo#window_width = 50
