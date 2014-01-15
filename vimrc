set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))


NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'monokrome/vim-user-configuration'
NeoBundle 'Shougo/unite.vim'

if (v:version == 703 && has('patch584')) || v:version >= 704
  NeoBundle 'Valloric/YouCompleteMe'
endif


NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'alfredodeza/coveragepy.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'chrisbra/csv.vim'
NeoBundle 'dart-lang/dart-vim-plugin'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'drmingdrmer/xptemplate'
NeoBundle 'duff/vim-bufonly'
NeoBundle 'gmarik/vundle'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'https://github.com/pangloss/vim-javascript'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'johnsyweb/vim-makeshift.git'
" NeoBundle 'kana/vim-exjumplist' - I DON'T KNOW WHAT TO THINK ABOUT THIS.
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'lunaru/vim-less'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'moll/vim-node'
NeoBundle 'monokrome/openssl.vim'
NeoBundle 'monokrome/vim-flow'
NeoBundle 'mutewinter/nginx.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'neochrome/todo.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'smerrill/vagrant-vim'
NeoBundle 'taxilian/a.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tsukkee/unite-tag.git'
NeoBundle 'tpope/heroku-remote'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-characterize'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-flatfoot'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-rhubarb'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-tbone'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'uggedal/go-vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-scripts/Better-CSS-Syntax-for-Vim'
NeoBundle 'vim-scripts/EnhancedJumps'
NeoBundle 'vim-scripts/L9'
NeoBundle 'vim-scripts/TaskList.vim'
NeoBundle 'vim-scripts/VimClojure'
NeoBundle 'vim-scripts/closetag.vim'
NeoBundle 'vim-scripts/django.vim'
NeoBundle 'voithos/vim-python-matchit'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'wting/rust.vim'


NeoBundleLazy 'jelera/vim-javascript-syntax', {
  \ 'autoload':{
  \   'filetypes':[
  \     'javascript'
  \   ]
  \ }}
