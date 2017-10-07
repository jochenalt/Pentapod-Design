<img src="../images/image057.png" >

This picture shows all components used. On the left, the pentapods *brain* running on an Odroid C2 is seen. It takes care of the SLAM algorithm, the trajectory planning, the character, the kinematics and the gait. It is implemented on base of ROS kinetic on Ubuntu 14.04 in C++ on an 1.5GHz Quadcore board. The interface is exposed by a small webserver (mongoose) publishing REST services encapsulating ROS functionality and all operations making the pentapod move. This webserver runs in a ROS nodes that does the orchestration of other ROS nodes as well, i.e. one node for hector SLAM, one for the engine computing the gait and the kinematics, and one for gathering data from the lidar sensor.

The engine is connected to the *cortex* that directly controls all sensors and servos. It is a Teensy 3.5 board that provides a sufficient number of UARTs and I<sup>2</sup>C interfaces. It does not do any major computations besides running a loop at 33Hz that sends commands to the servos, receives commands from the *brain*, collects sensor data from the IMU, and does some health checking on voltage and servo state.


