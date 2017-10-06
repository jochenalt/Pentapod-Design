Before starting the construction; I started with an openGL simulation of the gait, to play around with the number of legs. This is the pentapod with 7 legs, it seemed to be too crowded to me.
<img src="../videos/Pentapod-7-legs-vs-5legs.gif"/>

But 7 legs is really a lot, and would not be cheap either.

When I came up with the idea of not adding but removing a leg, I had in mind a design with very thin leg with 5 thigh gaps, and no wires crossing the joints. The servo motors should be hidden, and should not lead to ugly bulges as a consequence of the cuboid shape of a servo, which makes it difficult to have an axial movement.

I startet with this construction which I liked very much, it is very lean and creepy:
<img  src="../images/IMG_20170915_174835.jpg"/>

Standing up was difficult, but worked finally:
<video width="320" height="240" controls>
	<source src="../videos/VID_20170701_175425.mp4" type="video/mp4"/>
</video>

walking was possible as well 

<img src="../videos/thin-pentapod-walks.gif"/>


and even twerking (actually, this was not on purpose, this happened when I introduced the IMU to keep the body levelled, but the PID controller's parameters were completely rubbish, so it osscillated in all axis which turned out to be really hot!)
<img src="../videos/pentapod-twerks.gif"/>

Unfortunately, it turned out that once I put in batteries and the lidar on top, it gained 500 gramms of weight and the servo in the thigh was not strong enough to lift and move the body anymore.
It had a breakdown every here and then, and the body crashed on the ground since the servos activated the emergency shutdown. So, I intended to use a stronger servo in the thigh, and had to design a more clumsy  leg like this:

<img width="200px" src="../images/IMG_20171003_160225.jpg"/>
(The lean and nice one is one the left, the final clumsy one on the right)

# CAD
 
The CAD design of the leg is made with Inventor looks like this

<img width="700px" src="../images/cad-leg-total.png"/>
<img width="700px" src="../images/cad-leg-total-cut.png"/>

The hip is attached to the body via screws, and holds the servo that takes care of the forward and backward movements of the leg. It is connected to the hip joint, that connects the hip to the thigh.

<img align="left" width="300px" src="../images/cad-hip-cut.png"/><img width="300px" src="../images/cad-hipjoint-cut.png"/>

The thigh has to carry the whole weight, so it requires the strongest and biggest servo with 5.2Nm. The connection between the thigh and the knee is the most interesting part, since it contains a 90° gear to turn the knee axially. Additionally, it reduced the service by 1:1.5 allowing to use a weak servo with 1.2Nm here.

<img width="700px" src="../images/cad-thigh-cut.png"/>

Finally the foot contains the PCB with the Atmega8 accessing the distance sensor, so there needs to be a lot of empty space.

<img  width="700px" src="../images/cad-foot-cut.png"/>

The body contains the Odroid, Teensy, batteries and switched power supply 
<img  width="600px" src="../images/cad-body-cut.png"/>

And finally, the pentapod's total design:
<img  width="800px" src="../images/cad-pentapod-total.png"/>
