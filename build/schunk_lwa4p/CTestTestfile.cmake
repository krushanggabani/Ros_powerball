# CMake generated Testfile for 
# Source directory: /home/bci/ros_powerball/src/schunk_robots/schunk_lwa4p
# Build directory: /home/bci/ros_powerball/build/schunk_lwa4p
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_schunk_lwa4p_roslaunch-check_launch "/home/bci/ros_powerball/build/schunk_lwa4p/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/bci/ros_powerball/build/schunk_lwa4p/test_results/schunk_lwa4p/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/bci/ros_powerball/build/schunk_lwa4p/test_results/schunk_lwa4p" "/opt/ros/kinetic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/bci/ros_powerball/build/schunk_lwa4p/test_results/schunk_lwa4p/roslaunch-check_launch.xml' '/home/bci/ros_powerball/src/schunk_robots/schunk_lwa4p/launch' ")
add_test(_ctest_schunk_lwa4p_rostest_urdf_test_urdf.test "/home/bci/ros_powerball/build/schunk_lwa4p/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/bci/ros_powerball/build/schunk_lwa4p/test_results/schunk_lwa4p/rostest-urdf_test_urdf.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/bci/ros_powerball/src/schunk_robots/schunk_lwa4p --package=schunk_lwa4p --results-filename urdf_test_urdf.xml --results-base-dir \"/home/bci/ros_powerball/build/schunk_lwa4p/test_results\" /home/bci/ros_powerball/src/schunk_robots/schunk_lwa4p/urdf/test/urdf.test ")
subdirs(gtest)
