# VIM Ubuntu Setup
## Requirements
Python linters: *black*, *flake8*<br />
Python fixer: *isort* <br />
Code documentation tool: *doxygen* <br />
<sub>All of these can be installed with *sudo apt-get install &lt;program_name&gt;* </sub>

## Instructions
1) Git clone this repository into the base directory, usually /home/&lt;user&gt;/ <br />
2) Create a symlink for the .vimrc file in your base directory: *ln -s ~/.vim/.vimrc ~/* <br />
3) Open VIM and type the following command to install the vim plugins *:PluginInstall* <br />

## Optional
1) If you want C++ and python autocompletion for ROS and ROS2 [^1], compile YCM by: <br />

```
cd ~/.vim/bundle/YouCompleteMe/
python3 install.py --clang-completer
```
Python autocompletion is ready at this point. However, for C++ additional compilation flags need to be passed to YCM through a `compile_commands.json` file. For ROS, this can be done by configuring catkin-tools  with an additional CMake argument. Navigate to catkin workspace, and execute the following command and `catkin build`: <br />

```
catkin config --cmake-args \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
```
For ROS2, navigate to colcon workspace, execute the following command, and `colcon build`:<br />

```
colcon build --cmake-args \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
```

You are all set <br />


[^1]: ROS autocompletion credits to Briancbn 
