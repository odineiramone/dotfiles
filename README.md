# dotfiles

Hello! This is a collection of my dotfiles to use in MacOS :D

Feel free to use then but I strongly recommend start your own dotfiles from scratch. Especially if you are creating your first dotfiles.


## Setup

- Create a folder called `dotfiles` in your home folder

  ```shell
  mkdir ~/dotfiles
  ```

- Clone this repository inside the `~/dotfiles` folder

  ```shell
  git clone git@github.com:odineiramone/dotfiles.git ~/dotfiles
  ```

- Copy this chunk of code inside your `.bash_profile` file

  ```shell
  # Loading our .dotfiles (aliases, functions, exports, extras)
  for file in ~/.dotfiles/shell/*; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
  done;
  unset file;
  ```
- Source your `.bash_profile` file

  ```shell
  source ~/.bash_profile
  ```
