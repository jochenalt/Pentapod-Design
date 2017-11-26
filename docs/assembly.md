It's a good idea to assemble each leg without wiring upfront to check if all parts fit together. If not, file until they do.

Before assembling, put all servos to a null position and assign their identifier to it according to the convention as stated in the [Herkulex ID convention](http://poor-pentapod.readthedocs.io/en/latest/bill-of-material/#herkulex-ids) with the [Herkulex Servo Manager](http://poor-pentapod.readthedocs.io/en/latest/bill-of-material/#tools)

**Preparation**

Put bushing in ball bearing 35x44x5 

<img width=300 src="../images/put-outer-bushing-into-bearing.jpg"/> 

Put inner bushing into outer bushing to apply pressure to the connection between ball bearing and bushing

<img width=300 src="../images/put-inner-bushing-into-outer-bushing.jpg"/> 

Screw down small gearwheel and ball bearing 11x7x3 onto DRS-0101 Servo, that is intended for turning the knee.

<img width=300 src="../images/put-small-gearwheel-on-knee-servo.jpg"/> 

** Assembly**

Start with the foot, put the sensor PCB and distance sensor at the dedicated positions

<img width=500 src="../images/wire-servo-and-sensor-in-foot.jpg"/> 

Put the disk that holds the silicone dampener in the foot

<img width=500 src="../images/put-dampener-disk-in-foot.jpg"/> 

Insert the hexagonal bolt that keeps both halves together 

<img width=500 src="../images/insert-distance-sleeve-into-foot.jpg"/> 

Turn the foot and have a look at the hole that carries the bearing later on. Very likely, the wires can be seen where the bearing is supposed to be later on.

<img width=500 src="../images/see-wires-in-bearing-hole-in-foot.jpg"/> 

Carefully put the wires aside, pushing them to the left and to the right of the bearing hole and put the 11x7x3 ball bearing in the hole

<img width=500 src="../images/put-wires-away-from-bearing-in-foot.jpg"/> 

Screw down whole foot

<img width=500 src="../images/foot-done.jpg"/> 

Now put the bushing with the bearing and the big bevel gear into one half of the thigh. Take care that the small rabbet of the bevel gear is located as on the picture (this rabbet is for the wire)

<img width=500 src="../images/assembly-knee-bearing.jpg"/> 

Put the DRS-0101 servo we prepared upfront into its target position. Take a 300mm servo wire, put it into the servos socket and draw the wrire carefully through the hole in the bearing and the rabbet of the bevel gear.

<img width=500 src="../images/assembly-put-servo-in-knee.jpg"/> 

Turn the knee and screw the foot to the knee

<img width=500 src="../images/assembly-screw-foot-to knee.jpg"/> 

Turn the knee, put the three hexagonal bolts in the knee and assembly the other half of the knee. Screw it down.

<img width=500 src="../images/assembly-put-other-knee-half.jpg"/>

Now put the DRS-0401 servo in the thigh and take care that the wires from the knee are going around the servo in the designated rabbet. 

<img width=500  src="../images/assembly-addservo-to-thigh.jpg"/>

The wires of the DRS-0401 need to be separate and are not part of the HerkuleX bus, since they are powered with a higher voltage of 14.7V.

<img width=500 src="../images/assembly-thigh-wires.jpg"/>

Add the other half of the thigh enclosure and take care that each wire bundle is coming out on different sides

<img width=500 src="../images/assembly-put-top-half-on-thigh.jpg"/>

Now put the DRS-0101 servo into the top half of the hip and screw down the servo to the hip joint

<img width=500 src="../images/assembly-putservo-to-hip.jpg"/>

Screw down the hip joint to the thigh's servo disk and lay the wires as shown in the picture. The hip's DRS-0101 is part of the HerkuleX bus of the knee and the foot, so we need to connect the knee's wire to the hips outgoing socket.

<img width=500 src="../images/assembly-prepare-hip-wire.jpg"/>

Put the other half on the hip and carefully move the wires aside the bearing hole. The halves fit well, iff the wires are correctly located. If not, some experience is required to place them in the rabbets. If the hip halves have a gap, the wires are not placed correctly. Do not act with force, you will only damage the wires.

<img width=500 src="../images/assembly-hip-bottom-half.jpg"/>

Now screw down the other half of the hip joint. The wire bundles come out at different sides of the hip joint to avoid being entangled while moving.

<img width=500 src="../images/assembly-close-hip.jpg"/>

Do this five times.

<img  width=500 src="../images/5legs.jpg"/>

The legs are attached to the bottom half of the body with four nuts each. 

<img width=500 src="../images/assembly-attach-legs-tobody.jpg"/>

In the body the power supply board can be seen, which is not secured but simply lies on the ground.