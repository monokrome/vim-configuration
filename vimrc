" Disable Vi compatibility
set nocompatible


call plug#begin()


" My custom configurations. This is akin to what most people might put into one
" giant .vimrc file.
Plug 'monokrome/vim-user-configuration'


" Utility plugins - used by other scripts for their features.
Plug 'Shougo/unite.vim' " Library for generalized navigation of item lists
Plug 'mattn/webapi-vim' " HTTP access to VimScript commands
Plug 'rizzatti/funcoo.vim' " Adds 'object-oriented' constructs to VimL
Plug 'vim-scripts/L9' " Helper library for VimL

" Asyncronous processing to VimScript commands
Plug 'Shougo/vimproc', {
    \ 'build' : {
    \     'windows' : 'make -f make_mingw32.mak',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_unix.mak',
    \    },
    \ }


" Helper plugins
Plug 'Lokaltog/vim-easymotion' " Allows quick motions to characters that are currently in vim
Plug 'Raimondi/delimitMate.git' " Puts things after other things!
Plug 'Shougo/neocomplete' " Completion support that isn't YouCompleteMe
Plug 'Shougo/unite-outline' " A nested outline of the current buffer's tags
Plug 'SirVer/ultisnips' " Much smarter TextMate-style snippet support
Plug 'altercation/vim-colors-solarized' " Solarized color scheme
Plug 'duff/vim-bufonly' " A command for removing all buffers except the active one
Plug 'ervandew/supertab' " Use tab for completions (This breaks stuff?)
Plug 'gcmt/wildfire.vim' " Smart visual selection of nearest objects by pressing <Enter>
Plug 'godlygeek/tabular' " Simplify horizontal alignment of text
Plug 'goldfeld/vim-seek' " A two-character context version of the 'f' and 'F' motion
Plug 'gregsexton/MatchTag' " Highlights matching tags when the cursor is over one of them
Plug 'guns/vim-sexp' " More nice text objects, operators, and motions!
Plug 'honza/vim-snippets' " A decent library of standard snippets
Plug 'itchyny/lightline.vim' " A lightweight alternative to PowerLIne for pretty statusbars
Plug 'jeetsukumaran/vim-nefertiti' " Colorscheme formerly known as MochaLatte
Plug 'johnsyweb/vim-makeshift.git' " 'intelligent' selection of makeprg
Plug 'kana/vim-exjumplist' " Plug mappings to jump between buffers in the jumplist
Plug 'majutsushi/tagbar' " A tagbar pane for the current buffer
Plug 'mattn/gist-vim' " Allows simple posting to Gist from within Vim
Plug 'mhinz/vim-signify' " Signs that describe your current SCM changeset
Plug 'michaeljsmith/vim-indent-object' " An indentation (i) text object for indent-based languages
Plug 'monokrome/openssl.vim' " Allows wrapping Vim's I/O around OpenSSL
Plug 'monokrome/vim-flow' " Rhyme completion and syllable counting
Plug 'nathanaelkane/vim-indent-guides' " Guide lines for indentation
Plug 'neochrome/todo.vim' " A todo list for Vim.
Plug 'nicholaides/words-to-avoid.vim' " Highlights words that should be avoided in technical writing
Plug 'scrooloose/syntastic' " Wraps semantic analysis into various UIs in Vim
Plug 'sjl/badwolf' " A nice, warm color scheme
Plug 'sjl/gundo.vim' " Tools to help better manage the undo tree
Plug 'taxilian/a.vim' " Commands for jumping between alternate related files
Plug 'terryma/vim-multiple-cursors' " The ability to use multiple cursors
Plug 'tommcdo/vim-exchange.git' " Use cx to exchange text over motions
Plug 'tpope/heroku-remote' " Helpers for working with Heroku
Plug 'tpope/vim-abolish' " For performing replaces, fixing typos, and otherwise managing many variants of phrases
Plug 'tpope/vim-characterize' " Enhances 'ga' to provide more useful information
Plug 'tpope/vim-classpath' " Manages the Java classpath
Plug 'tpope/vim-commentary' " Comment and uncomment lines with 'gc' verbs
Plug 'tpope/vim-dispatch' " Forks processes from Vim, and get their output in a buffer after they finish.
Plug 'tpope/vim-endwise' " Automatically insert redundant block-closing code
Plug 'tpope/vim-eunuch' " File management from inside Vim
Plug 'tpope/vim-fireplace' " Clojure REPL integration
Plug 'tpope/vim-flatfoot' " Smarter mappings for the {f,F,t,T} motions using CTRL.
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-jdaddy' " JSON text objects
Plug 'tpope/vim-obsession' " Automatic session management via :Obsession
Plug 'tpope/vim-projectile' " Scaffolding in Vim
Plug 'tpope/vim-repeat' " Makes repeat even more powerful
Plug 'tpope/vim-rhubarb' " Tools for interacting with the social aspect of GitHub
Plug 'tpope/vim-sensible' " Somewhat sensible defaults for modernizing Vim a bit by default.
Plug 'tpope/vim-sleuth' " Automatic exploration of related files to set up indentation settings
Plug 'tpope/vim-speeddating' " Manages dates more easily by adding support for them to CTRL-A/CTRL-X
Plug 'tpope/vim-surround' " Automates insertion of surrounding characters (IE, } after {)
Plug 'tpope/vim-tbone' " Basic integrations between tmux and Vim
Plug 'tpope/vim-unimpaired' " Nice keybinds for toggling, enabling, navigating, etc. using [, ], and c.
Plug 'tpope/vim-vinegar' " Manage file/directory navigation more easily while sticking with netrw.
Plug 'tsukkee/unite-tag.git' " Search tagfiles via Unite
Plug 'vim-scripts/TaskList.vim' " Provides lists of tasks (TODO, FIXME, etc) related to the current buffer
Plug 'vim-scripts/closetag.vim' " Reduces redudant typing in XML-like file types
Plug 'voithos/vim-python-matchit' " Allows the % motion to work with Python keywords.
Plug 'wellle/targets.vim' " Some smart generic text objects!

" Language bundles
Plug 'Quramy/tsuquyomi'
Plug 'chrisbra/csv.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'davidhalter/jedi-vim'
Plug 'digitaltoad/vim-jade'
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'guns/vim-clojure-static'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'ivalkeen/vim-simpledb' 
Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'lunaru/vim-less'
Plug 'mintplant/vim-literate-coffeescript.git'
Plug 'monokrome/vim-testdrive'
Plug 'mutewinter/nginx.vim'
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-git'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/Better-CSS-Syntax-for-Vim'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'wavded/vim-stylus'
Plug 'wting/rust.vim'

Plug 'marijnh/tern_for_vim', {
    \ 'build' : {
    \     'windows' : 'npm install',
    \     'cygwin' : 'npm install',
    \     'mac' : 'npm install',
    \     'unix' : 'npm install',
    \    },
    \ }

" Framework-specific bundles
Plug 'jmcomets/vim-pony' " Wraps Django commands into Vim commands
Plug 'moll/vim-node' " Helpers for working in NodeJS
Plug 'smerrill/vagrant-vim' " Automatically set `ruby` filetype on Vagrantfile
Plug 'vim-scripts/django.vim' " Syntax highlighting for Django templates


call plug#end()
