Robots that twitch during startup look always unprofessional. There need's to be a protocol how to start, initialize and wakeup.

For that purpose, the **cortex** has a relay, that switches the servo's power. By that, I could ensure that ODroid and Teensy come up properly, and are not disturbed by current peaks induced by the motors. The full startup procedure is like this:

* When switching on the battery power, Odroid and Teensy turns on immediately. Teensy is up first, having initialized the IMU, checking voltage and stuff, switching on the power relay for the servos but not yet switching torque on. It is only used to detect the angles of all servos. Then, cortex waits until commands from the Odroid come in.
* After 30s, Odroid is up as well and start to initiate the communication with the cortex 
* Odroid asks the cortex for all servo angles and the IMU values and continuously broadcasts that to the webserver node
* Once the webserver receives the command to start, Odroid computes the position of all legs via forward kinematics, and turns torque on.
* ODroid is playing a startup procedure that moves each leg one by one in an upright position (This came from the time when I head the weak thigh servo, and it could stand up only when all legs helped. Maybe this is not necessary anymore now) 
* Once all legs are close to a perpendicular position to the ground, it stands up.

<img src="../videos/standup-procedure.gif"/>




