<img src="../images/component-overview.png" >

This picture shows all components used. On the left, the pentapods *brain* running on an Odroid C2 is seen. It takes care of the SLAM algorithm, the trajectory planning, the character, the kinematics and the gait. It is implemented on base of ROS kinetic on Ubuntu 14.04 in C++ on an 1.5GHz Quadcore board. The interface is exposed by a small webserver (mongoose) publishing REST services encapsulating ROS functionality and all operations making the pentapod move. This webserver runs in a ROS nodes that does the orchestration of other ROS nodes as well, i.e. one node for hector SLAM, one for the engine computing the gait and the kinematics, and one for gathering data from the lidar sensor.

The engine is connected to the *cortex* that directly controls all sensors and servos. It is a Teensy 3.5 board that provides a sufficient number of UARTs and I<sup>2</sup>C interfaces. It does not do any major computations besides running a loop at 33Hz that sends commands to the servos, receives commands from the *brain*, collects sensor data from the IMU, and does some health checking on voltage and servo state.


The schematics of the board are not too complex, its just a couple of descrete components since the Teensy does most stuff on own (click to enlarge)

[(<img src="../images/schematics-cortex.png" >)](http://poor-pentapod.readthedocs.io/en/latest/images/schematics-cortex.png") 

**Power supply**

Since the thigh servo needs 14V while the smaller servos need 10V, I used the plain Lipo 4S battery for the thigh servos (14.7V) and added a switched voltage converter (XL4016) to get stable 10V.  The Odroid and the Teensy requires 5V, that is given by another voltage converter. 

**Cortex(Teensy)**
The cortex board does not need a lot, since most of the stuff is done by the Teensy alone. I sepnt two ADC pins of the teensy to measure the voltage of the battery and the voltage converter, added a relay to switch on the power for the servos, and that's it mainly, all the rest is just sockets for the IMU, the connection to the ODroid, the batteries, 5 sockets to serve the thigh servos, 5 for all other servos per leg, and a connector to the panel containing the on/off button.

[(<img src="../images/schematics-sensor.png" >)](http://poor-pentapod.readthedocs.io/en/latest/images/schematics-sensor.png") 

**Sensor Board**

The sensor board behaves like a HerkuleX servo in order to attach it to the Herkulex bus. It is a small AVR controller surrounded by minimal components only. The only luxury component is an osscillator, which allows the ATMega to use 115200 baud in a stable manner.

**Startup Procedure**
In order to have a clean startup procedure, I added a relay that switches the servo's power. By that, I could ensure that ODroid and Teensy came up properly, before switching on the servos. The full startup procedure is like this:

* when switching on the battery power, Odroid and Teensy get 5V immediately. 
* When ODroid has booted successfully after 45s, it checked the connection to the Teensy board.
* Teensy gets the request to startup, it checks the voltage and the IMU.
* Teensy switches on the relay that gives power to the servos, but they are not yet enabled. Anyhow, this gives a short current peak of 4A before settling at 1A idle current)
* Teensy meaasures all angles of the servos, the IMU, and communicates that to the Odroid
* ODroid is initiating the startup procedure by switching on the torque of the servos (results in a current of typ. 5A), putting the feet on the ground, bringing them one by one in an upright position and then lifts the body.



