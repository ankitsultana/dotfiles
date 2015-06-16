# Dotfiles (for dummies) (Wait for Fix)
Contains the dotfiles for using vim. Works with iTerm 2 on OS X.
At the end of this, if everything goes well you will have vim with ```vim-airline``` installed, with color scheme solarized (Dark for iTerm and Light for MacVim. You will also have ```NERDTree``` and ```pathogen``` installed.

A snapshot of vim-airline with Solarized Dark:

![alt text](https://raw.githubusercontent.com/wiki/bling/vim-airline/screenshots/demo.gif "Solarized Dark")

A snapshot of vim-airline with Solarized Light:

![alt text](https://camo.githubusercontent.com/44d3ea9af4d9b289521802e734f40cc16e153b15/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f3330363530322f313030393432392f64363933303664612d306233382d313165332d393462662d3763366533656566343165392e706e67 "Solarized Light")


Before starting, remove any existing ```.vim``` or ```vim``` directory from your home directory and 
```.vimrc``` file from your home directory.

##STEPS

 1. Remove existing ```.vim``` or ```vim``` directory and ```.vimrc``` from your home directory.
 2. Install powerline fonts
 3. Clone this repo in your home directory
 4. Move ```vim``` directory from Dotfiles to your home directory, rename it to ```.vim```
 5. Move ```vimrc``` from Dotfiles to your home directory and rename it to ```.vimrc```
 6. Change settings in iTerm Preferences
 7. Done!

###Step 1: Remove existing files
  
  Self Explanatory
  
###Step 2: Install powerline fonts

  ```git clone``` [powerline fonts](https://github.com/powerline/fonts.git) in any directory, preferably in your home directory
  
  After cloning the directory, navigate to ```powerline-fonts``` and then to ```Meslo``` and open each ```.otf``` file. If powerline-fonts is in your home directory, then just type:
  
  ```
  cd ~/powerline-fonts/Meslo
  open Meslo\ LG\ *
  ```
  
  Just click on ```Install Font``` on each of the separate windows that open up. Another fontbook window might open up. Ignore that, and after installing each of the fonts close that fontbook.
  
  If everything works fine. Continue.
  
###Step 3: Clone this repo
  
  Just clone this repo in your home directory. Open up terminal and type:
  
  ```
  git clone https://github.com/bk2dcradle/Dotfiles
  ```

###Step 4: Move and rename vim directory

  In terminal type:
  
  ```
  mv ~/Dotfiles/vim ~/.vim
  ```
  
###Step 5: Move and rename vimrc

  In terminal type:
  
  ```
  mv ~/Dotfiles/vimrc ~/.vimrc
  ```

###Step 6: Change settings in iTerm 

  Open up ```iTerm``` go to ```Preferences -> Profiles -> Text``` and ```change font``` for both ```Regular``` and ```Non-ASCII```, to ```18pt Meslo LG S Regular for Powerline```.
  
###Step 7:
  
  Restart iTerm and type vim. 
  
