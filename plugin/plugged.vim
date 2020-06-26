""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off

call plug#begin('$HOME/.vim/extensions')

" RAWEAJEFLSEFASLefSJEFSefsef DEATH TO WHITESPACES
Plug 'bronson/vim-trailing-whitespace'

" Provide additional text targets for di/a<char>:
" , . ; : + - = ~ _ * # / | \ & $
Plug 'wellle/targets.vim'

" Provide motion keyed to gs<motion> to sort stuff.
Plug 'christoomey/vim-sort-motion'

" Better FfTt action.
Plug 'unblevable/quick-scope'

" Auto CD to project root.
Plug 'airblade/vim-rooter'

" Quickly change wrapping characters with cs<char>.
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-sort-motion'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'

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

" Syntax highlighting.
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

" File finder.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Linting and tab completion.
Plug 'ervandew/supertab'

" Nice fast background grepping.
Plug 'mhinz/vim-grepper'
Plug 'haya14busa/vim-asterisk'

" Enforce .editorconfig.
Plug 'editorconfig/editorconfig-vim'

" For nvim
Plug 'equalsraf/neovim-gui-shim'

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
" junegunn/fzf.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Match fzf.vim to colorscheme.
" See: https://github.com/junegunn/fzf.vim/issues/581
let g:fzf_colors = {
      \ "fg":       ["fg", "Normal"],
      \ "bg":       ["bg", "Normal"],
      \ "hl":       ["fg", "IncSearch"],
      \ "fg+":      ["fg", "CursorLine", "CursorColumn", "Normal"],
      \ "bg+":      ["bg", "CursorLine", "CursorColumn"],
      \ "hl+":      ["fg", "IncSearch"],
      \ "info":     ["fg", "IncSearch"],
      \ "border":   ["fg", "Ignore"],
      \ "prompt":   ["fg", "Comment"],
      \ "pointer":  ["fg", "IncSearch"],
      \ "marker":   ["fg", "IncSearch"],
      \ "spinner":  ["fg", "IncSearch"],
      \ "header":   ["fg", "WildMenu"]
      \ }

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
