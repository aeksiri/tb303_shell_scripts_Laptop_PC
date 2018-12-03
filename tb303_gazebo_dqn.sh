#! /bin/bash

#kill in TB3
ssh tb303@10.42.0.103 'killall -9 bash'
ssh tb303@10.42.0.103 'killall -9 bringup.sh'
ssh tb303@10.42.0.103 'killall -9 python'
ssh tb303@10.42.0.103 'killall -9 hlds_laser_publisher'
ssh tb303@10.42.0.103 'killall -9 turtlebot3_diagnostics'
ssh tb303@10.42.0.103 'killall -9 sshd'
ssh tb303@10.42.0.103 'killall -9 raspi_camera.sh'
ssh tb303@10.42.0.103 'killall -9 roslaunch'
ssh tb303@10.42.0.103 'killall -9 raspicam_node'

#Kill in LAPTOP
killall -9 ssh
killall -9 roslaunch
killall -9 rosout
killall -9 rosmaster

#source files
source /opt/ros/kinetic/setup.bash

source ~/catkin_ws/devel/setup.bash

roscore &

sleep 10

roslaunch turtlebot3_gazebo turtlebot3_stage_1.launch &

sleep 10

roslaunch turtlebot3_dqn turtlebot3_dqn_stage_1.launch

#kill in TB3
ssh tb303@10.42.0.103 'killall -9 bash'
ssh tb303@10.42.0.103 'killall -9 bringup.sh'
ssh tb303@10.42.0.103 'killall -9 python'
ssh tb303@10.42.0.103 'killall -9 hlds_laser_publisher'
ssh tb303@10.42.0.103 'killall -9 turtlebot3_diagnostics'
ssh tb303@10.42.0.103 'killall -9 sshd'
ssh tb303@10.42.0.103 'killall -9 raspi_camera.sh'
ssh tb303@10.42.0.103 'killall -9 roslaunch'
ssh tb303@10.42.0.103 'killall -9 raspicam_node'

#Kill in LAPTOP
killall -9 ssh
killall -9 roslaunch
killall -9 rosout
killall -9 rosmaster

echo "TB3_GAZEBO_COMPLETED!!!"
