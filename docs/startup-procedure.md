Robots that twitch during startup always look unprofessional. So, we need a protocol how to start, initialize and wakeup.

For that purpose, the **cortex** has a relay that turns on the servo's power. By that, it can be ensured that the Odroid and the Teensy come up properly without being disturbed by current peaks induced by thr servos. The full startup procedure is like this:

* When turning on the battery power, Teensy is on immediately, the Odroid starts Linux. The Teensy initializes the IMU, checks voltage and connections, and turns on the relay for the servos, but does not yet enable the servo's torque. Only the angles of all servos are read. After that, the cortex waits until commands from the Odroid come in.
* After 30s, Odroid is up as well and starts to initiate the communication with the cortex 
* Odroid asks the cortex for servo angles and IMU values and broadcasts that to the webserver node
* Once the webserver receives the command to start, Odroid computes the position of all legs via forward kinematics, and turns torque on.
* Odroid is playing a startup procedure that moves each leg one by one in an upright position (this came from the time when I head the weak thigh servo, and it could stand up only when all legs helped. Maybe this is not necessary anymore now, but it looks nice) 
* Once all legs are close to a perpendicular position to the ground, it stands up.

<img src="../videos/standup-procedure.gif"/>




