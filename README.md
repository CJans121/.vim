# VIM Ubuntu Setup
## Requirements
Python linters: *black*, *flake8*<br />
Python fixer: *isort* <br />
Code documentation tool: *doxygen* <br />
Fuzzy file searcher: *fzf* <br />
<sub>All of these can be installed with *sudo apt-get install &lt;program_name&gt;* </sub>

## Instructions
1) Git clone this repository into the base directory, usually `~/`<br />
2) Create a folder called "bundle" inside this repo and git clone the vim plugin manager, Vundle into it: <br />

```
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
3) Create a symlink for the .vimrc file in your base directory:<br />

```
 ln -s ~/.vim/.vimrc ~/
```
4) Open VIM and type the following command to install the vim plugins `:PluginInstall` <br />

## Optional
1) If you want C++ and python autocompletion for ROS and ROS2, compile YCM by: <br />

```
cd ~/.vim/bundle/YouCompleteMe/
python3 install.py --clang-completer
```
Python autocompletion is ready at this point. However, for C++ additional compilation flags need to be passed to YCM through a `compile_commands.json` file. For ROS, this can be done by configuring catkin-tools  with an additional CMake argument. Navigate to catkin workspace, and execute the following command and `catkin build`: <br />

```
catkin config --cmake-args \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
```
or for workspaces built with `catkin_make`: <br />

```
catkin_make \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
```
For ROS2, navigate to colcon workspace, execute the following command, and `colcon build`:<br />

```
colcon build --cmake-args \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
```

You are all set <br />

**Credits**[^1][^2]
[^1]: Gruvbox theme from morhetz/gruvbox
[^2]: ROS autocompletion from Briancbn/ros\_vim\_autocomplete
