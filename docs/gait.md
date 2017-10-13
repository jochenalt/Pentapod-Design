Unfortunately, there's no example by nature about a gait with 5 legs. Since you need three legs to stand, two legs can leave the ground at the same time. This means, that we have 60% of a period with a leg in the air. A tripod gait is not possible, a wave gait is really slow, but a ripple gait in a modified version for 5 legs is reasonable. To get that, the order in that each leg begins its movement is 1,3,5,2,4:

<img width=400 src="../images/ripple-gait.png"/>

The animation shows a red triangle that indicates the area where the bot is standing on. The sequence above leads to a slowly turning triangle.

<img width=320 src="../videos/gaittimeshift.gif"/>

Still, it might be a need to have one spare leg to do something yukky. In that case a wave gait is the only alternative:

<img width=320 src="../images/wave-gait-with-spare-leg.png"/>

Being aware that the hips are now  asymmetricly arranged, we need to translate the body to be located above the supporting area. To avoid being on the edge of this area, it is necessary to let the body swing in a manner that moves the centre of gravity away from that edge:

<img width=320 src="../videos/wave-gait-with-one-spare-leg.gif"/>


The leg movement is modelled by a cubic bezier curve with the first support point in the middle of the gait and the second one right above the touch point. This gives a bent curve accelerating when leaving the ground, and braking before touch the ground again.

<img width=200 src="../images/leg-movement.png"/>

If the ground is not plain, the distance sensors in the leg detect that. When the zenith of the movement is reached, the actual distance is constantly compared to the expected distance. The z-coordinate of the touch point is adapted accordingly leading to a compressed or stretched second half of the movement:

<img width=300  src="../images/leg-movement-terrain.png"/>

In real life this looks like this. I you watch closely, you can also see that right before touching the ground the leg starts moving backwards to avoid a jolt giving an impulse to the body against the walking direction 

<img width=320 src="../videos/leg-movement.gif"/>
