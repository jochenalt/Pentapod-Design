Unfortunately, there's no example by nature about a gait with 5 legs. Since you need three legs to stand, two legs can lift. The gait is the outcome of 5 legs carrying out the same movement but with an individual time shift per leg. The time shift is a static sequence ensuring that the two legs in the air are always opposite to each other. 

The order of the legs that start their sequence is 1,3,5,2,4:
<img src="../images/gait-timeshift-graph.png"/>


The animation shows a red triangle that indicates the area where the bot is standing on. The sequence above leads to a slowly turning triangle.

<img src="../videos/gaittimeshift.gif"/>


The leg movement is modelled by a cubic bezier curve with the first support point in the middle of the gait and the second one right above the touch point. This gives a bent curve accelerating when leaving the ground, and braking before touch the ground again.

<img width="30%" src="../images/leg-movement.png"/>

If the ground is not plain, the distance sensors in the leg detect that. When the zenith of the movement is reached, the actual distance is constantly compared to the expected distance. The z-coordinate of the touch point is adapted accordingly leading to a compressed or stretched second half of the movement:

<img width="50%" src="../images/leg-movement-terrain.png"/>
