# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/yang/tmp/betrfs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yang/tmp/betrfs/build

# Include any dependencies generated for this target.
include locktree/CMakeFiles/locktree_static.dir/depend.make

# Include the progress variables for this target.
include locktree/CMakeFiles/locktree_static.dir/progress.make

# Include the compile flags for this target's objects.
include locktree/CMakeFiles/locktree_static.dir/flags.make

locktree/CMakeFiles/locktree_static.dir/locktree.cc.o: locktree/CMakeFiles/locktree_static.dir/flags.make
locktree/CMakeFiles/locktree_static.dir/locktree.cc.o: ../locktree/locktree.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yang/tmp/betrfs/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object locktree/CMakeFiles/locktree_static.dir/locktree.cc.o"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/locktree_static.dir/locktree.cc.o -c /home/yang/tmp/betrfs/locktree/locktree.cc

locktree/CMakeFiles/locktree_static.dir/locktree.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/locktree_static.dir/locktree.cc.i"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yang/tmp/betrfs/locktree/locktree.cc > CMakeFiles/locktree_static.dir/locktree.cc.i

locktree/CMakeFiles/locktree_static.dir/locktree.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/locktree_static.dir/locktree.cc.s"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yang/tmp/betrfs/locktree/locktree.cc -o CMakeFiles/locktree_static.dir/locktree.cc.s

locktree/CMakeFiles/locktree_static.dir/locktree.cc.o.requires:
.PHONY : locktree/CMakeFiles/locktree_static.dir/locktree.cc.o.requires

locktree/CMakeFiles/locktree_static.dir/locktree.cc.o.provides: locktree/CMakeFiles/locktree_static.dir/locktree.cc.o.requires
	$(MAKE) -f locktree/CMakeFiles/locktree_static.dir/build.make locktree/CMakeFiles/locktree_static.dir/locktree.cc.o.provides.build
.PHONY : locktree/CMakeFiles/locktree_static.dir/locktree.cc.o.provides

locktree/CMakeFiles/locktree_static.dir/locktree.cc.o.provides.build: locktree/CMakeFiles/locktree_static.dir/locktree.cc.o

locktree/CMakeFiles/locktree_static.dir/manager.cc.o: locktree/CMakeFiles/locktree_static.dir/flags.make
locktree/CMakeFiles/locktree_static.dir/manager.cc.o: ../locktree/manager.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yang/tmp/betrfs/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object locktree/CMakeFiles/locktree_static.dir/manager.cc.o"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/locktree_static.dir/manager.cc.o -c /home/yang/tmp/betrfs/locktree/manager.cc

locktree/CMakeFiles/locktree_static.dir/manager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/locktree_static.dir/manager.cc.i"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yang/tmp/betrfs/locktree/manager.cc > CMakeFiles/locktree_static.dir/manager.cc.i

locktree/CMakeFiles/locktree_static.dir/manager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/locktree_static.dir/manager.cc.s"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yang/tmp/betrfs/locktree/manager.cc -o CMakeFiles/locktree_static.dir/manager.cc.s

locktree/CMakeFiles/locktree_static.dir/manager.cc.o.requires:
.PHONY : locktree/CMakeFiles/locktree_static.dir/manager.cc.o.requires

locktree/CMakeFiles/locktree_static.dir/manager.cc.o.provides: locktree/CMakeFiles/locktree_static.dir/manager.cc.o.requires
	$(MAKE) -f locktree/CMakeFiles/locktree_static.dir/build.make locktree/CMakeFiles/locktree_static.dir/manager.cc.o.provides.build
.PHONY : locktree/CMakeFiles/locktree_static.dir/manager.cc.o.provides

locktree/CMakeFiles/locktree_static.dir/manager.cc.o.provides.build: locktree/CMakeFiles/locktree_static.dir/manager.cc.o

locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o: locktree/CMakeFiles/locktree_static.dir/flags.make
locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o: ../locktree/lock_request.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yang/tmp/betrfs/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/locktree_static.dir/lock_request.cc.o -c /home/yang/tmp/betrfs/locktree/lock_request.cc

locktree/CMakeFiles/locktree_static.dir/lock_request.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/locktree_static.dir/lock_request.cc.i"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yang/tmp/betrfs/locktree/lock_request.cc > CMakeFiles/locktree_static.dir/lock_request.cc.i

locktree/CMakeFiles/locktree_static.dir/lock_request.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/locktree_static.dir/lock_request.cc.s"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yang/tmp/betrfs/locktree/lock_request.cc -o CMakeFiles/locktree_static.dir/lock_request.cc.s

locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o.requires:
.PHONY : locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o.requires

locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o.provides: locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o.requires
	$(MAKE) -f locktree/CMakeFiles/locktree_static.dir/build.make locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o.provides.build
.PHONY : locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o.provides

locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o.provides.build: locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o

locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o: locktree/CMakeFiles/locktree_static.dir/flags.make
locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o: ../locktree/txnid_set.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yang/tmp/betrfs/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/locktree_static.dir/txnid_set.cc.o -c /home/yang/tmp/betrfs/locktree/txnid_set.cc

locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/locktree_static.dir/txnid_set.cc.i"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yang/tmp/betrfs/locktree/txnid_set.cc > CMakeFiles/locktree_static.dir/txnid_set.cc.i

locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/locktree_static.dir/txnid_set.cc.s"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yang/tmp/betrfs/locktree/txnid_set.cc -o CMakeFiles/locktree_static.dir/txnid_set.cc.s

locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o.requires:
.PHONY : locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o.requires

locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o.provides: locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o.requires
	$(MAKE) -f locktree/CMakeFiles/locktree_static.dir/build.make locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o.provides.build
.PHONY : locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o.provides

locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o.provides.build: locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o

locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o: locktree/CMakeFiles/locktree_static.dir/flags.make
locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o: ../locktree/range_buffer.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yang/tmp/betrfs/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/locktree_static.dir/range_buffer.cc.o -c /home/yang/tmp/betrfs/locktree/range_buffer.cc

locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/locktree_static.dir/range_buffer.cc.i"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yang/tmp/betrfs/locktree/range_buffer.cc > CMakeFiles/locktree_static.dir/range_buffer.cc.i

locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/locktree_static.dir/range_buffer.cc.s"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yang/tmp/betrfs/locktree/range_buffer.cc -o CMakeFiles/locktree_static.dir/range_buffer.cc.s

locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o.requires:
.PHONY : locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o.requires

locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o.provides: locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o.requires
	$(MAKE) -f locktree/CMakeFiles/locktree_static.dir/build.make locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o.provides.build
.PHONY : locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o.provides

locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o.provides.build: locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o

locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o: locktree/CMakeFiles/locktree_static.dir/flags.make
locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o: ../locktree/keyrange.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yang/tmp/betrfs/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/locktree_static.dir/keyrange.cc.o -c /home/yang/tmp/betrfs/locktree/keyrange.cc

locktree/CMakeFiles/locktree_static.dir/keyrange.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/locktree_static.dir/keyrange.cc.i"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yang/tmp/betrfs/locktree/keyrange.cc > CMakeFiles/locktree_static.dir/keyrange.cc.i

locktree/CMakeFiles/locktree_static.dir/keyrange.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/locktree_static.dir/keyrange.cc.s"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yang/tmp/betrfs/locktree/keyrange.cc -o CMakeFiles/locktree_static.dir/keyrange.cc.s

locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o.requires:
.PHONY : locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o.requires

locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o.provides: locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o.requires
	$(MAKE) -f locktree/CMakeFiles/locktree_static.dir/build.make locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o.provides.build
.PHONY : locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o.provides

locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o.provides.build: locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o

locktree/CMakeFiles/locktree_static.dir/wfg.cc.o: locktree/CMakeFiles/locktree_static.dir/flags.make
locktree/CMakeFiles/locktree_static.dir/wfg.cc.o: ../locktree/wfg.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yang/tmp/betrfs/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object locktree/CMakeFiles/locktree_static.dir/wfg.cc.o"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/locktree_static.dir/wfg.cc.o -c /home/yang/tmp/betrfs/locktree/wfg.cc

locktree/CMakeFiles/locktree_static.dir/wfg.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/locktree_static.dir/wfg.cc.i"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yang/tmp/betrfs/locktree/wfg.cc > CMakeFiles/locktree_static.dir/wfg.cc.i

locktree/CMakeFiles/locktree_static.dir/wfg.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/locktree_static.dir/wfg.cc.s"
	cd /home/yang/tmp/betrfs/build/locktree && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yang/tmp/betrfs/locktree/wfg.cc -o CMakeFiles/locktree_static.dir/wfg.cc.s

locktree/CMakeFiles/locktree_static.dir/wfg.cc.o.requires:
.PHONY : locktree/CMakeFiles/locktree_static.dir/wfg.cc.o.requires

locktree/CMakeFiles/locktree_static.dir/wfg.cc.o.provides: locktree/CMakeFiles/locktree_static.dir/wfg.cc.o.requires
	$(MAKE) -f locktree/CMakeFiles/locktree_static.dir/build.make locktree/CMakeFiles/locktree_static.dir/wfg.cc.o.provides.build
.PHONY : locktree/CMakeFiles/locktree_static.dir/wfg.cc.o.provides

locktree/CMakeFiles/locktree_static.dir/wfg.cc.o.provides.build: locktree/CMakeFiles/locktree_static.dir/wfg.cc.o

# Object files for target locktree_static
locktree_static_OBJECTS = \
"CMakeFiles/locktree_static.dir/locktree.cc.o" \
"CMakeFiles/locktree_static.dir/manager.cc.o" \
"CMakeFiles/locktree_static.dir/lock_request.cc.o" \
"CMakeFiles/locktree_static.dir/txnid_set.cc.o" \
"CMakeFiles/locktree_static.dir/range_buffer.cc.o" \
"CMakeFiles/locktree_static.dir/keyrange.cc.o" \
"CMakeFiles/locktree_static.dir/wfg.cc.o"

# External object files for target locktree_static
locktree_static_EXTERNAL_OBJECTS =

locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/locktree.cc.o
locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/manager.cc.o
locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o
locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o
locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o
locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o
locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/wfg.cc.o
locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/build.make
locktree/liblocktree_static.a: locktree/CMakeFiles/locktree_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library liblocktree_static.a"
	cd /home/yang/tmp/betrfs/build/locktree && $(CMAKE_COMMAND) -P CMakeFiles/locktree_static.dir/cmake_clean_target.cmake
	cd /home/yang/tmp/betrfs/build/locktree && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/locktree_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
locktree/CMakeFiles/locktree_static.dir/build: locktree/liblocktree_static.a
.PHONY : locktree/CMakeFiles/locktree_static.dir/build

locktree/CMakeFiles/locktree_static.dir/requires: locktree/CMakeFiles/locktree_static.dir/locktree.cc.o.requires
locktree/CMakeFiles/locktree_static.dir/requires: locktree/CMakeFiles/locktree_static.dir/manager.cc.o.requires
locktree/CMakeFiles/locktree_static.dir/requires: locktree/CMakeFiles/locktree_static.dir/lock_request.cc.o.requires
locktree/CMakeFiles/locktree_static.dir/requires: locktree/CMakeFiles/locktree_static.dir/txnid_set.cc.o.requires
locktree/CMakeFiles/locktree_static.dir/requires: locktree/CMakeFiles/locktree_static.dir/range_buffer.cc.o.requires
locktree/CMakeFiles/locktree_static.dir/requires: locktree/CMakeFiles/locktree_static.dir/keyrange.cc.o.requires
locktree/CMakeFiles/locktree_static.dir/requires: locktree/CMakeFiles/locktree_static.dir/wfg.cc.o.requires
.PHONY : locktree/CMakeFiles/locktree_static.dir/requires

locktree/CMakeFiles/locktree_static.dir/clean:
	cd /home/yang/tmp/betrfs/build/locktree && $(CMAKE_COMMAND) -P CMakeFiles/locktree_static.dir/cmake_clean.cmake
.PHONY : locktree/CMakeFiles/locktree_static.dir/clean

locktree/CMakeFiles/locktree_static.dir/depend:
	cd /home/yang/tmp/betrfs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yang/tmp/betrfs /home/yang/tmp/betrfs/locktree /home/yang/tmp/betrfs/build /home/yang/tmp/betrfs/build/locktree /home/yang/tmp/betrfs/build/locktree/CMakeFiles/locktree_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : locktree/CMakeFiles/locktree_static.dir/depend
