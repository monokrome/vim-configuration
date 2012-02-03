This project is a collection of the vim bundles that I like to
use. It is meant to be used after pathogen is installed, and
cloned directly into ~/.vim with the name 'bundles'. You can
do this with the following commands **after installing
pathogen**:

    cd ~/.vim/
    git clone https://github.com/monokrome/vim-bundles bundles

After this is done, make sure that you have installed a piece of
software called [git slave](http://gitslave.sourceforge.net/).
Git slave *is not* part of git itself.

You can easily install git slave in OS X if you have homebrew:

    brew update # Make sure homebrew is up to date!
    brew install gitslave

Now, you can have git slave populate the bundles:

    cd bundles
    gits populate

If you are interested in creating a repository like this, it is
very simple to use git slave! You can get started fairly fast with
[their documentation](http://gitslave.sourceforge.net/gits-man-page.html).
