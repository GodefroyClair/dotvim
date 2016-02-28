set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where vundle should install plugins
"call vundle#begin('~/some/path/here')

" let vundle manage vundle, required
Plugin 'vundlevim/vundle.vim'

Plugin 'kana/vim-textobj-user'
" use ae & ie to select the whole text
Plugin 'kana/vim-textobj-entire.git'

" keep plugin commands between vundle#begin/end.


" the following are examples of different formats supported.
"" plugin on github repo
"plugin 'tpope/vim-fugitive'
"put commentary with the gc operator
Plugin 'tpope/vim-commentary'
"
"" plugin from http://vim-scripts.org/vim/scripts.html
"plugin 'l9'
"
"" git plugin not hosted on github
"plugin 'git://git.wincent.com/command-t.git'
"
"" git repos on your local machine (i.e. when working on your own plugin)
"plugin 'file:///home/gmarik/path/to/plugin'
"
"" the sparkup vim script is in a subdirectory of this repo called vim.
"" pass the path to set the runtimepath properly.
"plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
"" avoid a name conflict with l9
"plugin 'user/l9', {'name': 'newl9'}
"
"
"html5 + inline svg omnicomplete function, indent and syntax for vim. based on
"the default htmlcomplete.vim.
Plugin 'othree/html5.vim'


" all of your plugins must be added before the following line
call vundle#end()            " required



filetype on
filetype plugin indent on    " required
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


syntax on
set history=300
set autoindent
set expandtab "don't use actual tab character
set shiftwidth=4 "indenting is 4 spaces
set softtabstop=4
set ruler
set number
set matchpairs+=<:>,":" "add pair symbols to the % tool (which find the matching pair)


autocmd bufnewfile *.html,*.htm 0r ~/.vim/templates/html5base.html
autocmd bufnewfile *.PHP 0r ~/.vim/templates/phpbase.php
autocmd bufnewfile,BufRead *.php set filetype=php
autocmd bufnewfile,BufRead *.PHP set filetype=html
autocmd BufNewFile,BufRead *.rss,*.atom,*.xml setfiletype xml
autocmd BufNewFile,BufRead *.rss,*.atom,*.xml setfiletype xml
autocmd BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.py setfiletype python
"BufRead is triggered after the buffer has been populated with the content of a file.
"BufEnter is triggered after you enter a buffer for editing.You may use BufNew, BufRead or BufAdd if you want to do something upon the creation of the buffer: setting some global variable, populating a buffer list of your own for use in a script.

"auto-completion
"au shortcut for autocmd
autocmd filetype html set omnifunc=htmlcomplete#CompleteTags
au filetype html iabbrev </ </<c-x><c-o>


"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set nohlsearch
