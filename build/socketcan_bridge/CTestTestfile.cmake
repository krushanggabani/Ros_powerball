# CMake generated Testfile for 
# Source directory: /home/bci/ros_powerball/src/ros_canopen/socketcan_bridge
# Build directory: /home/bci/ros_powerball/build/socketcan_bridge
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_socketcan_bridge_gtest_test_conversion "/home/bci/ros_powerball/build/socketcan_bridge/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/bci/ros_powerball/build/socketcan_bridge/test_results/socketcan_bridge/gtest-test_conversion.xml" "--return-code" "/home/bci/ros_powerball/devel/.private/socketcan_bridge/lib/socketcan_bridge/test_conversion --gtest_output=xml:/home/bci/ros_powerball/build/socketcan_bridge/test_results/socketcan_bridge/gtest-test_conversion.xml")
add_test(_ctest_socketcan_bridge_rostest_test_to_socketcan.test "/home/bci/ros_powerball/build/socketcan_bridge/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/bci/ros_powerball/build/socketcan_bridge/test_results/socketcan_bridge/rostest-test_to_socketcan.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/bci/ros_powerball/src/ros_canopen/socketcan_bridge --package=socketcan_bridge --results-filename test_to_socketcan.xml --results-base-dir \"/home/bci/ros_powerball/build/socketcan_bridge/test_results\" /home/bci/ros_powerball/src/ros_canopen/socketcan_bridge/test/to_socketcan.test ")
add_test(_ctest_socketcan_bridge_rostest_test_to_topic.test "/home/bci/ros_powerball/build/socketcan_bridge/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/bci/ros_powerball/build/socketcan_bridge/test_results/socketcan_bridge/rostest-test_to_topic.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/bci/ros_powerball/src/ros_canopen/socketcan_bridge --package=socketcan_bridge --results-filename test_to_topic.xml --results-base-dir \"/home/bci/ros_powerball/build/socketcan_bridge/test_results\" /home/bci/ros_powerball/src/ros_canopen/socketcan_bridge/test/to_topic.test ")
subdirs(gtest)
