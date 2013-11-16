#Bash and Vim Configuration
Hopefully you will find these files helpful. Input from others is ***greatly*** appreciated. Besides the files in this repo, there are a few extra steps that are needed and explained below. Good luck!

## Pathogen

[Pathogen](https://github.com/tpope/vim-pathogen) is a package manager for Vim add-ons. Installing Pathogen is easy, copy and paste this whole command:

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

The final installation step is to make sure `execute pathogen#infect()` has been added to your .vimrc.` has been added to your .vimrc.

Installing an add-on is as easy cloning it's repo in `~/.vim/bundle`:

    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-sensible.git
    
#### Install Recommended Packages
**[Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)**

    cd ~/.vim/bundle
    git clone git@github.com:terryma/vim-multiple-cursors.git
