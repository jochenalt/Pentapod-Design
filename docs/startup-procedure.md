Robots that twitch during startup look always unprofessional. There need's to be a protocol how to start, initialize and wakeup.

For that purpose, the **cortex** has a relay, that switches the servo's power. By that, I could ensure that ODroid and Teensy come up properly, and are not disturbed by current peaks induced by the motors. The full startup procedure is like this:

* When switching on the battery power, Odroid and Teensy get 5V immediately. Teensy is up first, having initialized the IMU, checking voltage and such, switching on the power relay for the servos but not yet switching torque on. It is only ussed to detect the angles of all servos. Then, cortex waits until commands from the Odroid com in.
* After 30s, Odroid will come up, it first checks the connection to the cortex board.
* Odroid asks the cortex for all servo angles and the IMU values and continuously broadcasts that to the webserver node

* Once the webserver receives the command to start, Odroid computes the position of all legs, and switches torque on.
* ODroid is playing a startup procedure that move each leg one by one in an upright position
* Once all legs are perpendicular on the ground, it stands up.

<img src="../videos/standup-procedure.gif"/>




