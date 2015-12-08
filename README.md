# Dotfiles (for dummies)
Contains the dotfiles for using vim. Also contains zsh and bash settings. Works with iTerm 2 on OS X.
At the end of this, if everything goes well you will have vim with `vim-airline` installed, with color scheme solarized (Dark for iTerm and Light for MacVim). You will also have `NERDTree` and `pathogen` installed. For a full list of plugins, check the contents of `.vim/bundle/`

A snapshot of vim-airline with Solarized Dark:

![alt text](https://raw.githubusercontent.com/wiki/bling/vim-airline/screenshots/demo.gif "Solarized Dark")

A snapshot of vim-airline with Solarized Light:

![alt text](https://camo.githubusercontent.com/44d3ea9af4d9b289521802e734f40cc16e153b15/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f3330363530322f313030393432392f64363933303664612d306233382d313165332d393462662d3763366533656566343165392e706e67 "Solarized Light")

**Note: If you want to update, just do a**
```git pull``` in the `Dotfiles` folder.

##Steps Overview

 1. Remove existing ```.vim``` or ```vim``` directory and ```.vimrc``` from your home directory.
 2. Install powerline fonts
 3. Clone this repo in your home directory
 4. Move required files. More about this below.
 5. Install solarized for iTerm
 6. Change settings in iTerm Preferences
 7. Done!

###Step 1: Remove existing files
  
  Remove `.vim` directory, `.vimrc` from your *Home Directory*. I would recommend you to store a backup of them if ever you want switch to your previous settings.
  
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
  
  Just clone this repo in your **Home Directory** (Note we are going to use recursive since the repo contains submodules). Open up terminal and type:
  
  ```
  git clone --recursive https://github.com/bk2dcradle/Dotfiles.git
  ```
  
  Then do:
  ```
  cd ~/Dotfiles/vim/bundle
  git submodule init
  git submodule update
  ```

###Step 4: Move Required files

*Tip:* Instead of moving the following, Copy them to your *Home Directory*. That will make it easier for you to update by doing a `git pull` in your Dotfiles folder.

If you want my *vim* settings only, you need to move `.vimrc` and `.vim` to your *Home Directory*. 

If you want my *zsh* settings only, move `.zshrc` and `.zshrc-e` to your *Home Directory*. You might have to install [zsh](https://github.com/robbyrussell/oh-my-zsh) if you haven't already.

If you want my *bash* settings, move `.bash_profile` to your *Home Directory*.


###Step 5: Install solarized for iTerm
 
  Clone solarized in your home directory from [here](https://github.com/altercation/solarized).
  
  Open up ```iTerm``` go to ```Preferences -> Profiles -> Colors -> Load Presets``` Browse to ```iterm2-colors-solarized``` folder and load both ```light``` and ```dark``` versions. 
  
  Finally select the one you like.

###Step 6: Change settings in iTerm 

  Open up ```iTerm``` go to ```Preferences -> Profiles -> Text``` and ```change font``` for both ```Regular``` and ```Non-ASCII```, to ```18pt Meslo LG S Regular for Powerline```.
  
###Step 7:
  
  Restart iTerm and type vim. 
  
