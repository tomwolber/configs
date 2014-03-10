#iTerm, Bash, Vim, and Git Configuration

Hopefully you will find these files helpful. Input from others is ***greatly*** appreciated. Besides the files in this repo, there are a few extra steps that are needed and explained below. Good luck!

## iTerm Color Scheme

### Basic Colors

| Type          | Color         |
|---------------|:-------------:|
| Foreground    | 222, 218, 207 |
| Background    | 23, 23, 23    |
| Bold          | 255, 255, 255 |
| Selection     | 69, 59, 57    |
| Selected Text | 182, 187, 192 |
| Cursor        | 187, 187, 187 |
| Cursor Text   | 255, 255, 255 |

### ANSI Colors

| Color   | Normal        | Bright |
|---------|:-------------:|:-------------:|
| Black   | 0, 0, 0       | 49, 49, 49    | 
| Red     | 255, 97, 90   | 245, 140, 128 |
| Green   | 177, 233, 105 | 221, 248, 143 |
| Yellow  | 235, 217, 156 | 238, 229, 178 | 
| Blue    | 93, 169, 246  | 165, 199, 255 |
| Magenta | 232, 106, 255 | 221, 170, 255 | 
| Cyan    | 130, 255, 247 | 183, 255, 249 |
| White   | 222, 218, 207 | 255, 255, 255 |


## Pathogen

[Pathogen](https://github.com/tpope/vim-pathogen) is a package manager for Vim add-ons. Installing Pathogen is easy, copy and paste this whole command:

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

The final installation step is to make sure `execute pathogen#infect()` has been added to your .vimrc.

Installing an add-on is as easy cloning it's repo in `~/.vim/bundle`:

    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-sensible.git
    
#### Install Recommended Packages
**[Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)**

    cd ~/.vim/bundle
    git clone git@github.com:terryma/vim-multiple-cursors.git

**[NERDTree](https://github.com/scrooloose/nerdtree)**

    cd ~/.vim/bundle
    git clone https://github.com/scrooloose/nerdtree.git

**[NERDTree Tabs](https://github.com/jistr/vim-nerdtree-tabs)**

    cd ~/.vim/bundle
    git clone https://github.com/jistr/vim-nerdtree-tabs.git    

**[Vim Fugitive](https://github.com/tpope/vim-fugitive)**

    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-fugitive.git

**[Vim Airline](https://github.com/bling/vim-airline)**

    cd ~/.vim/bundle
    git clone https://github.com/bling/vim-airline.git 

(For Airline icons, see also [Source Code Pro for Powerline](https://github.com/Lokaltog/powerline-fonts/tree/master/SourceCodePro))

**[Stylus.vim](https://github.com/wavded/vim-stylus)**

    cd ~/.vim/bundle
    git@github.com:wavded/vim-stylus.git 

## Git Config
Git doesn't really need that much configuration, but there are a few tricks to make it nicer.

#### Enable Colors
Enabling colors makes things like `git status` a lot more readable. True story. 

    git config --global color.ui true

#### Git Autocomplete (for OS X)
I had been working on Linux VMs for so long that I forgot the autocomplete for Git didn't work out of the box on OS X. Installing this script from Github is an easy no-brainer.

    curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
    echo "source ~/.git-completion.bash" >> ~/.bash_profile
