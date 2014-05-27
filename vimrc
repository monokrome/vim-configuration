" Disable Vi compatibility
set nocompatible


" Initialize NeoBundle, and let it manage updating itself.
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'


" My custom configurations. This is akin to what most people might put into one
" giant .vimrc file.
NeoBundle 'monokrome/vim-user-configuration'


" Utility plugins - used by other scripts for their features.
NeoBundle 'Shougo/unite.vim' " Library for generalized navigation of item lists
NeoBundle 'mattn/webapi-vim' " HTTP access to VimScript commands
NeoBundle 'rizzatti/funcoo.vim' " Adds 'object-oriented' constructs to VimL
NeoBundle 'vim-scripts/L9' " Helper library for VimL

" Asyncronous processing to VimScript commands
NeoBundle 'Shougo/vimproc', {
    \ 'build' : {
    \     'windows' : 'make -f make_mingw32.mak',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_unix.mak',
    \    },
    \ }


" Very smart completion engine for Python and C.
" TODO: Deprecate this, because it's an architectural nightmare.
if (v:version == 703 && has('patch584')) || v:version >= 704
  NeoBundle 'Valloric/YouCompleteMe'
else
  NeoBundleDisable 'Valloric/YouCompleteMe'
endif


" Helper plugins
NeoBundle 'Lokaltog/vim-easymotion' " Allows quick motions to characters that are currently in vim
NeoBundle 'Shougo/unite-outline' " A nested outline of the current buffer's tags
NeoBundle 'altercation/vim-colors-solarized' " Solarized color scheme
NeoBundle 'drmingdrmer/xptemplate' " Support for TextMate-style snippets in Vim
NeoBundle 'duff/vim-bufonly' " A command for removing all buffers except the active one
NeoBundle 'gcmt/wildfire.vim' " Smart visual selection of nearest objects by pressing <Enter>
NeoBundle 'godlygeek/tabular' " Simplify horizontal alignment of text
NeoBundle 'goldfeld/vim-seek' " A two-character context version of the 'f' and 'F' motion
NeoBundle 'gregsexton/MatchTag' " Highlights matching tags when the cursor is over one of them
NeoBundle 'guns/vim-sexp' " More nice text objects, operators, and motions!
NeoBundle 'itchyny/lightline.vim' " A lightweight alternative to PowerLIne for pretty statusbars
" NeoBundle 'jaxbot/github-issues.vim' " Completion providing GitHub issue information
NeoBundle 'johnsyweb/vim-makeshift.git' " 'intelligent' selection of makeprg
NeoBundle 'kana/vim-exjumplist' " Plug mappings to jump between buffers in the jumplist
NeoBundle 'majutsushi/tagbar' " A tagbar pane for the current buffer
NeoBundle 'mattn/gist-vim' " Allows simple posting to Gist from within Vim
NeoBundle 'mhinz/vim-signify' " Signs that describe your current SCM changeset
NeoBundle 'michaeljsmith/vim-indent-object' " An indentation (i) text object for indent-based languages
NeoBundle 'monokrome/openssl.vim' " Allows wrapping Vim's I/O around OpenSSL
NeoBundle 'monokrome/vim-flow' " Rhyme completion and syllable counting
NeoBundle 'nathanaelkane/vim-indent-guides' " Guide lines for indentation
NeoBundle 'neochrome/todo.vim' " A todo list for Vim.
NeoBundle 'nicholaides/words-to-avoid.vim' " Highlights words that should be avoided in technical writing
NeoBundle 'scrooloose/syntastic' " Wraps semantic analysis into various UIs in Vim
NeoBundle 'sjl/badwolf' " A nice, warm color scheme
NeoBundle 'sjl/gundo.vim' " Tools to help better manage the undo tree
NeoBundle 'taxilian/a.vim' " Commands for jumping between alternate related files
NeoBundle 'terryma/vim-multiple-cursors' " The ability to use multiple cursors
NeoBundle 'tpope/heroku-remote' " Helpers for working with Heroku
NeoBundle 'tpope/vim-abolish' " For performing replaces, fixing typos, and otherwise managing many variants of phrases
NeoBundle 'tpope/vim-characterize' " Enhances 'ga' to provide more useful information
NeoBundle 'tpope/vim-classpath' " Manages the Java classpath
NeoBundle 'tpope/vim-commentary' " Comment and uncomment lines with 'gc' verbs
NeoBundle 'tpope/vim-dispatch' " Forks processes from Vim, and get their output in a buffer after they finish.
NeoBundle 'tpope/vim-endwise' " Automatically insert redundant block-closing code
NeoBundle 'tpope/vim-eunuch' " File management from inside Vim
NeoBundle 'tpope/vim-fireplace' " Clojure REPL integration
NeoBundle 'tpope/vim-flatfoot' " Smarter mappings for the {f,F,t,T} motions using CTRL.
NeoBundle 'tpope/vim-fugitive' " Git integration
NeoBundle 'tpope/vim-jdaddy' " JSON text objects
NeoBundle 'tpope/vim-obsession' " Automatic session management via :Obsession
NeoBundle 'tpope/vim-projectile' " Scaffolding in Vim
NeoBundle 'tpope/vim-repeat' " Makes repeat even more powerful
NeoBundle 'tpope/vim-rhubarb' " Tools for interacting with the social aspect of GitHub
NeoBundle 'tpope/vim-sensible' " Somewhat sensible defaults for modernizing Vim a bit by default.
NeoBundle 'tpope/vim-sleuth' " Automatic exploration of related files to set up indentation settings
NeoBundle 'tpope/vim-speeddating' " Manages dates more easily by adding support for them to CTRL-A/CTRL-X
NeoBundle 'tpope/vim-surround' " Automates insertion of surrounding characters (IE, } after {)
NeoBundle 'tpope/vim-tbone' " Basic integrations between tmux and Vim
NeoBundle 'tpope/vim-unimpaired' " Nice keybinds for toggling, enabling, navigating, etc. using [, ], and c.
NeoBundle 'tpope/vim-vinegar' " Manage file/directory navigation more easily while sticking with netrw.
NeoBundle 'tsukkee/unite-tag.git' " Search tagfiles via Unite
NeoBundle 'vim-scripts/TaskList.vim' " Provides lists of tasks (TODO, FIXME, etc) related to the current buffer
NeoBundle 'vim-scripts/closetag.vim' " Reduces redudant typing in XML-like file types
NeoBundle 'voithos/vim-python-matchit' " Allows the % motion to work with Python keywords.
NeoBundle 'tommcdo/vim-exchange.git' " Use cx to exchange text over motions
NeoBundle 'wellle/targets.vim' " Some smart generic text objects!


" Language bundles
NeoBundle 'chrisbra/csv.vim'
NeoBundle 'dart-lang/dart-vim-plugin'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'https://github.com/pangloss/vim-javascript'
NeoBundle 'ivalkeen/vim-simpledb' 
NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'lunaru/vim-less'
NeoBundle 'mintplant/vim-literate-coffeescript.git'
NeoBundle 'monokrome/vim-testdrive'
NeoBundle 'mutewinter/nginx.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'tpope/vim-git'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-scripts/Better-CSS-Syntax-for-Vim'
NeoBundle 'vim-scripts/JavaScript-Indent'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'wting/rust.vim'

NeoBundle 'marijnh/tern_for_vim', {
    \ 'build' : {
    \     'windows' : 'npm install',
    \     'cygwin' : 'npm install',
    \     'mac' : 'npm install',
    \     'unix' : 'npm install',
    \    },
    \ }

" Framework-specific bundles
NeoBundle 'jmcomets/vim-pony' " Wraps Django commands into Vim commands
NeoBundle 'moll/vim-node' " Helpers for working in NodeJS
NeoBundle 'smerrill/vagrant-vim' " Automatically set `ruby` filetype on Vagrantfile
NeoBundle 'vim-scripts/django.vim' " Syntax highlighting for Django templates


" Bundles that are intentionally disabled
NeoBundleDisable 'rizzatti/dash.vim' " Look up documentation using the OS X Dash app
NeoBundleDisable 'zhaocai/GoldenView.Vim' " Automatically organizes Vim's windows similarly to DWM


" silent NeoBundleClean! " Clean unnecessary bundles
" NeoBundleCheck " Check for any new ones.
