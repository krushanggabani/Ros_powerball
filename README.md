# Schunk Powerball ROS Setup 

**Contributor:- Krushang Gabani, Sri Sadhan**
The code is developed by [Hils lab](https://www.acsu.buffalo.edu/~ehsanesf/). 

## config

- Linux :- Ubuntu 16.04 xenial
- ROS   :- Kinetic lane


# Required Libraries 

- [ros canopen](https://github.com/ros-industrial/ros_canopen/tree/kinetic-devel)
- [ros control](https://github.com/ros-controls/ros_control/tree/kinetic-devel)
- [schunk robots](https://github.com/ipa320/schunk_robots)
- [cob_control](https://github.com/ipa320/cob_control/tree/kinetic_dev) 


# Require Ros Packages
1. [moveit](https://wiki.ros.org/kinetic/Installation/Ubuntu)

```
sudo apt-get install ros-kinetic-moveit
```
2. Graph msgs, Joy, Rviz 
```
sudo apt install ros-kineitc-graph-msgs
sudo apt install ros-kineitc-joy
sudo apt install ros-kineitc-rviz-visual-tools
```


# **Moveit Setup**

For more instruction,open this [link.](http://docs.ros.org/en/kinetic/api/moveit_tutorials/html/doc/getting_started/getting_started.html)

Let's start with moveit tutorials for ROS Kinetic version only. 


## Create workspace and buid using catkin.

clone all the required library in src folder. 
```
mkdir -p ~/ros_powerball_ws/src
cd ~/ros_powerball_ws
catkin build
```
If you get an error then first do catkin clean and then do again. 

## **Setup of config using urdf file**

- make sure to run following command after running catkin_make.
```
source devel/setup.bash
```

Follow this tutorial to setup robot. 

1. Setup the moveit configuration for the robot using moveit setup assistant
http://docs.ros.org/kinetic/api/moveit_tutorials/html/doc/setup_assistant/setup_assistant_tutorial.html

2. Follow the instructions for the low level controller 
http://docs.ros.org/kinetic/api/moveit_tutorials/html/doc/controller_configuration/controller_configuration_tutorial.html

In step 2 there are some changes. 

- no need to create controller.yaml file. Insted of that edit ros_controller.yaml file and add moveit configure folder name in controller list. such as 

``` yaml 
controller_list:
  - name: lwa4p_config/arm_position_controller
    action_ns: follow_joint_trajectory
    default: True
    type: FollowJointTrajectory
    joints:
      - arm_1_joint
      - arm_2_joint
      - arm_3_joint
      - arm_4_joint
      - arm_5_joint
      - arm_6_joint
```

- create robotname(lwa4p)_planning_execution.launch file in launch folder and add the following code. 
```html 
<launch>

  <include file="$(find lwa4p_config)/launch/planning_context.launch" >
    <arg name="load_robot_description" value="true" />
  </include>

  <node name="joint_state_publisher" pkg="joint_state_publisher" type="joint_state_publisher">
    <param name="/use_gui" value="false"/>
    <rosparam param="/source_list">[/lwa4p/joint_states]</rosparam>
  </node>

  <include file="$(find lwa4p_config)/launch/move_group.launch">
    <arg name="publish_monitored_planning_scene" value="true" />
  </include>

  <include file="$(find lwa4p_config)/launch/moveit_rviz.launch">
    <arg name="config" value="false"/>
  </include>

</launch> 
```

- Now launch the lwa49_planning_execution.launch file in terminal and also run rostopic list. If it is working correctly there will be no error and you are able to see arm_controller topic as well. 









