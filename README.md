# AAE5303-Assignment2-25005153G

# Assignment 2: ORB-SLAM3 Camera Adaptation
**Name:** DU Jiayi Rachel | **Course:** AAE5303

## 1. Objective
To deploy ORB-SLAM3 in a Dockerized ROS environment and perform camera adaptation for the HKairport dataset.

## 2. Implementation
- **Environment:** Docker image `liangyu99/orbslam3_ros1` on ROS Noetic.
- **Transcoding:** Used `image_transport` to decode 9.1GB of `CompressedImage` data.
- **Adaptation:** Modified intrinsic parameters ($f_x, f_y, c_x, c_y$) and distortion models in the configuration YAML to match the DJI OSDK camera profile.

## 3. Results
- **Initialization:** Successful map initialization in urban textures.
- **Frequency:** Stable at 7.34 Hz processing rate.
- **UI:** Verified via X11 forwarding on VcXsrv.
