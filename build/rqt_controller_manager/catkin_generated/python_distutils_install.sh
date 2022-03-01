#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/bci/ros_powerball/src/ros_control/rqt_controller_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/bci/ros_powerball/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/bci/ros_powerball/install/lib/python2.7/dist-packages:/home/bci/ros_powerball/build/rqt_controller_manager/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/bci/ros_powerball/build/rqt_controller_manager" \
    "/usr/bin/python2" \
    "/home/bci/ros_powerball/src/ros_control/rqt_controller_manager/setup.py" \
     \
    build --build-base "/home/bci/ros_powerball/build/rqt_controller_manager" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/bci/ros_powerball/install" --install-scripts="/home/bci/ros_powerball/install/bin"
