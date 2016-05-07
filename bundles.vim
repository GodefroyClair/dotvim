set nocompatible              " be improved, required
filetype off                  " required

"Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle manage vundle, required
Plugin 'vundlevim/vundle.vim'


"" plugin from http://vim-scripts.org/vim/scripts.html
"plugin 'l9'
"
"" git plugin not hosted on github
"plugin 'git://git.wincent.com/command-t.git'
"
"" the sparkup vim script is in a subdirectory of this repo called vim.
"" pass the path to set the runtimepath properly.
"plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
"" avoid a name conflict with l9
"plugin 'user/l9', {'name': 'newl9'}


""""""""""""""""""""""""""""""""""""""
"""""""""""" PLUGINS : """""""""""""""
""""""""""""""""""""""""""""""""""""""

Plugin 'kana/vim-textobj-user'
" use ae & ie to select the whole text
Plugin 'kana/vim-textobj-entire.git'
" use al & il to select the whole line
Plugin 'kana/vim-textobj-line'

"" plugin on github repo
Plugin 'tpope/vim-fugitive'
"put commentary with the gc operator
Plugin 'tpope/vim-commentary'
"cs shortcut : it provides mappings to easily delete, change and add such surroundings in
"pairs.
"exemple cs"' ; cs'<q> ; from tag to double quote cst" ; 
"remove with ds ;  "yank with y...
Plugin 'tpope/vim-surround'

"https://github.com/tpope/vim-unimpaired
" complementary pairs of mappings. They mostly fall into four categories.
" AR
Plugin 'tpope/vim-unimpaired'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'vim-scripts/phpfolding.vim'

Plugin 'jistr/vim-nerdtree-tabs'
"
Plugin 'Valloric/YouCompleteMe'

" SNIPPETS : Track the engine.
 Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
 Plugin 'honza/vim-snippets'
"
Plugin 'godlygeek/tabular'
"
"HTML
"html5 + inline svg omnicomplete function, indent and syntax for vim. based on the default htmlcomplete.vim.
Plugin 'othree/html5.vim'
Plugin 'htacg/tidy-html5'

"PHP :
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'm2mdas/phpcomplete-extended'

"R
Plugin 'jalvesaq/Nvim-R'

"Markdown
Plugin 'plasticboy/vim-markdown'


" all of your plugins must be added before 
call vundle#end()            " required

set runtimepath+=~/.vim/my-plugins

filetype plugin indent on    " required

runtime macros/matchit.vim
" to ignore plugin indent changes, instead use:
"filetype plugin on
"
" brief help
" :pluginlist       - lists configured plugins
" :plugininstall    - installs plugins; append `!` to update or just :pluginupdate
" :pluginsearch foo - searches for foo; append `!` to refresh local cache
" :pluginclean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for faq
" put your non-plugin stuff after this line
