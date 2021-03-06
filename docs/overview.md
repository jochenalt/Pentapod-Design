<img align="left" width="360" src="../images/logical-component-overview.png" >
The pentapod components follow this top-down flow. On top level, the free will is executed, i.e. the pentapod chooses targets to approach. For that purpose, there needs to be a map with walls and identified obstacles. This map is permanently produced by the SLAM algorithm on base of the Lidar sensor. The free-will component now checks the map for tight holes where the pentapod tightly fits in. The darkest one is chosen. 

The underlying navigation modules approaches these holes. It considers a global navigation plan as well as temporary obstacles identified by the Lidar. Out of that, a trajectory of poses is computed that is  sent to the gait controller. The gait controller computes the points of each toe per leg over time. Out of these toe points, the kinematics computes the angles of the joints, which are sent to the motors by the motor controller. In this step, the IMU is used to keep the lidar levelled. The distance sensors in the feet improve the gait by adapting the gait to the terrain.

<img src="../images/component-overview.png" >

This picture shows a more technical view of the components used. On the left, the pentapods *brain* running on an Odroid C2 is seen. It takes care of the SLAM algorithm, the trajectory planning, the character, the kinematics and the gait. It is implemented on base of ROS kinetic on Ubuntu 14.04 in C++ on an 1.5GHz Quadcore board. The interface is exposed by a small webserver (mongoose) publishing REST services encapsulating ROS functionality and all operations making the pentapod move. This webserver runs in a ROS node orchestrating all other ROS nodes, i.e. controls one node for the SLAM algorithm, one for the engine computing the gait and the kinematics, and one for gathering data from the lidar sensor.

The engine is connected to the *cortex* that controls all sensors and servos. It is a Teensy 3.5 board that provides a sufficient number of UARTs and I<sup>2</sup>C interfaces. Since heavy computations are left to the ODroid, it only runs a loop at 45Hz sending commands to the servos, collects sensor data from the IMU, and does some health checking on voltage and servo state. For communication I started with an UART, but struggled a lot with significant latency on the Linux side. In the end, I went with I<sup>2</sup>C which had no latency at all.

**Power supply** The thigh servo needs 14V while the smaller servos need 10V. Lipo 3S servos deliver convinient (14.7V), regulated 10V are supplied by a switched voltage converter (XL4016). The Odroid and the Teensy require 5V/3A, which is delivered by another voltage converter. 

[<img align="center" width="75%" src="../images/schematics-cortex.png">](http://poor-pentapod.readthedocs.io/en/latest/images/schematics-cortex.png) 

The PCB in Kicad and in real life is this

[<img align="center" width="75%" src="../images/power-supply-pcb.png">](http://poor-pentapod.readthedocs.io/en/latest/images/power-supply-pcb.png) 

<img align="center" width="500" src="../images/pentapod-power-supply.png" >

**Cortex(Teensy)**
The cortex board does not need much, most of the stuff is done by the Teensy alone. Each leg has its own Herkulex Bus that is controlled with one dedicated UART. This allows to parallelize servo control by sending all hip angles first, then sending all thigh commands, etc. This would made an update rate of 70 Hz for 20 servos possible. Since there's some other stuff to be done like fetching the servo status, checking the IMU, and Herkulex servos work with multiples of 11.2ms, I went with 1000ms/(2 * 11.2ms) = 45Hz. 
I spent two ADC pins to measure the voltage of the battery and the voltage converter and added a relay to switch on the power for the servos for the sake of a proper startup procedure (a bot should not jerk when switched on). 
Most of the components are sockets: One for the IMU, one for the connection to the ODroid, the batteries, 5 sockets for the thigh servos, 5 for all other servos per leg, and a connector to the panel at the outside of the body.

[<img align="center" width="75%" src="../images/cortex-pcb.png">](http://poor-pentapod.readthedocs.io/en/latest/images/cortex-pcb.png) 

<img align="center" src="../images/pentapod-cortex.png" >

**Sensor Board** The sensor board behaves like a HerkuleX servo in order to attach it to the Herkulex bus and saving own wires. It is a small AVR controller with a luxury crystal osscillator to run the UART with 115200 baud in a stable manner.

[<img align="center" width="50%" src="../images/schematics-sensor.png">](http://poor-pentapod.readthedocs.io/en/latest/images/schematics-sensor.png)

[<img align="center" width="50%" src="../images/sensor-pcb.png">](http://poor-pentapod.readthedocs.io/en/latest/images/sensor-pcb.png)

<img align="center" width="75%" src="../images/sensorboard.png" >

**Still-Life**

This is my desk, tidy, huh?

<img width="300px" src="../images/still-life.jpg"/>


