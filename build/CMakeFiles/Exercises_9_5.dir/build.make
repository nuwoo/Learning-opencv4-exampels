# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nuwoo/project/Learning-OpenCV-3_examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuwoo/project/Learning-OpenCV-3_examples/build

# Include any dependencies generated for this target.
include CMakeFiles/Exercises_9_5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Exercises_9_5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Exercises_9_5.dir/flags.make

CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.o: CMakeFiles/Exercises_9_5.dir/flags.make
CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.o: ../Exercises_9_5.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuwoo/project/Learning-OpenCV-3_examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.o -c /home/nuwoo/project/Learning-OpenCV-3_examples/Exercises_9_5.cpp

CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuwoo/project/Learning-OpenCV-3_examples/Exercises_9_5.cpp > CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.i

CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuwoo/project/Learning-OpenCV-3_examples/Exercises_9_5.cpp -o CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.s

# Object files for target Exercises_9_5
Exercises_9_5_OBJECTS = \
"CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.o"

# External object files for target Exercises_9_5
Exercises_9_5_EXTERNAL_OBJECTS =

Exercises_9_5: CMakeFiles/Exercises_9_5.dir/Exercises_9_5.cpp.o
Exercises_9_5: CMakeFiles/Exercises_9_5.dir/build.make
Exercises_9_5: /usr/local/lib/libopencv_gapi.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_highgui.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_ml.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_objdetect.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_photo.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_stitching.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_video.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_videoio.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_imgcodecs.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_dnn.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_calib3d.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_features2d.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_flann.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_imgproc.so.4.6.0
Exercises_9_5: /usr/local/lib/libopencv_core.so.4.6.0
Exercises_9_5: CMakeFiles/Exercises_9_5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuwoo/project/Learning-OpenCV-3_examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Exercises_9_5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Exercises_9_5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Exercises_9_5.dir/build: Exercises_9_5

.PHONY : CMakeFiles/Exercises_9_5.dir/build

CMakeFiles/Exercises_9_5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Exercises_9_5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Exercises_9_5.dir/clean

CMakeFiles/Exercises_9_5.dir/depend:
	cd /home/nuwoo/project/Learning-OpenCV-3_examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuwoo/project/Learning-OpenCV-3_examples /home/nuwoo/project/Learning-OpenCV-3_examples /home/nuwoo/project/Learning-OpenCV-3_examples/build /home/nuwoo/project/Learning-OpenCV-3_examples/build /home/nuwoo/project/Learning-OpenCV-3_examples/build/CMakeFiles/Exercises_9_5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Exercises_9_5.dir/depend

