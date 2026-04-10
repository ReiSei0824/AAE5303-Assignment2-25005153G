#!/bin/bash

roscore &
sleep 3

rosrun image_transport republish compressed in:=/left_camera/image out:=/camera/image_raw &
sleep 2

rosrun ORB_SLAM3 Mono /root/ORB_SLAM3/Vocabulary/ORBvoc.txt ./Config/HKairport.yaml &

rosbag play /data/HKairport_GNSS03.bag -r 0.5
