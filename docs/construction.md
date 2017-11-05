Before starting the construction; I started with an openGL simulation of the gait, to play around with the number of legs. This is the pentapod with 7 legs. 

<img src="../videos/Pentapod-7-legs-vs-5legs.gif"/>

You're right, too crowded, a body full of legs. 
Thinking of the design I had in mind something  thin with thigh gaps and no technical wires hanging over the joints. The servo motors should be hidden, even in the turning knee.

I startet with this construction which I liked very much, it is very lean and creepy:

<img  src="../images/thin-design.jpg"/>

Walking was possible  

<img src="../videos/thin-pentapod-walks.gif"/>

and even twerking (although, this happened by accident when I connected the IMU to keep the body levelled, but did not calibrated the PID controller's parameters, so it osscillated in all axis which turned out to be really hot!)

<img src="../videos/pentapod-twerks.gif"/>

Unfortunately, once I put in batteries and the lidar on top, it gained 500 gramms of weight. As a consequence the thigh was not strong enough to lift the body anymore.
It had a breakdown every here and then, and the body crashed on the ground since the servos activated the overload shutdown. So, I bought stronger servos in the thigh, and had to design a more clumsy leg like this:

<img align="left" width="200px" src="../images/thinleg-vs-fatleg.jpg"/>
<img width="200px" src="../images/fat-thighs.jpg"/>

The lean and nice one is one the left, the final clumsy one on the right. But, when being assembled, the fat thighs did not look as bad as I expected

# CAD
 
The CAD design of the leg should not look like the commen arrangement of brackets, screws, wires and servos, but like a real robot leg.

<img width="700px" src="../images/cad-leg-total.png"/>

The hip is attached to the body, and holds the servo that takes care of the forward and backward movements of the leg. It is connected to the hip joint, that connects the hip to the thigh.

<img align="left" width="300px" src="../images/cad-hip-cut.png"/><img width="300px" src="../images/cad-hipjoint-cut.png"/>

The thigh has to apply the biggest torque, it has the strongest and biggest servo with 5.2Nm. The connection between the thigh and the knee is the most interesting part, since it contains a 90° gear to turn the knee axially. Additionally, it reduces the servo by 1:1.5 allowing to use a much cheaper servo here with 1.2Nm .

<img width="700px" src="../images/cad-thigh-cut.png"/>

<img idth="700px" align="center" src="../images/thigh-knee-gearbox.jpg"/>


Finally the foot contains the PCB with the Atmega8 accessing the distance sensor, so there needs to be a lot of empty space.

<img  width="700px" src="../images/cad-foot-cut.png"/>

<img  width="700px" src="../images/real-foot-half.png"/>


The body contains the Odroid, Teensy, batteries and the switched power supply in the bottom. The IMU is attached right below the Lidar sensor. To assemble the body, there's a big thread between the top and the bottom part.

<img  width="600px" src="../images/cad-pentapod-body-cut.png"/>

The lidar is sitting on top of a small hat that contains the IMU and the Lidar's Uart2USb Adapter. This hat is placed on the holder for the odroid:

<img  width="600px" src="../images/cad-odroid-lidar-holder.png"/>


<img  width="600px" src="../images/inside-the-body.jpg"/>


And finally, the pentapod's design in total:
<img  width="800px" src="../images/cad-pentapod-total.png"/>

# Silicone Dampener

I used two types of silicone dampener. First is hidden on the bottom of the body, it's purpose is solely to prevent damages when something bad happens and the servos switch off unexpectedly. In that case, the body with a weight of 1 kilogramm would crash on the ground which might damage the lidar. The dampener is made with silicone rubber for stuff for making molds with 3D printed model:

<img  width="200px" align="left" src="../images/cad-body-dampener.png"/>
<img  width="180px" src="../images/body-silicone-dampener.jpg"/>

The dampener on the foot is made with a more complex shape, since it needs a hole to let the distance sensor look through. The 3D printed shape consists of 4 pieces where the inner pieces remain in the dampener allowing to secure the dampener in its position at the end of the foot.

<img  width="200px" align="left" src="../images/cad-foot-dampener.png"/>
<img  width="150px" src="../images/foot-dampener-shape.jpg"/>

In reality this is a rather greasy thing to spend time with:

<img  width="400px" src="../images/silicone-dampener-making-off.jpg"/>

