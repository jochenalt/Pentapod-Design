Unfortunately, there's no example by nature about a gait with 5 legs. Since you need three legs to stand, two legs can lift. The gait is the outcome of 5 legs carrying out the same movement but with an individual time shift per leg. The time shift is a static sequence ensuring that the two legs in the air are always opposite to each other. 

The order of the gait sequence to achieve this is 

| t<sub>0</sub>| t<sub>1</sub> | t<sub>2</sub>| t<sub>3</sub>  | t<sub>4</sub>  |
|------------  | --------------| ------------ | -------------- | -------------- | 
| leg 1        | leg 3         | leg 5        | leg 2          | leg 4          |


(It does not matter which leg is your number one)

The animation shows a red triangle that indicates the area where the bot is standing on. The sequence above leads to a slowly turning triangle.

<img src="../videos/gaittimeshift.gif"/>


The leg movement is modelled by a cubic bezier curve with the first support point in the middle of the gait and the second one right above the touch point. This gives a bent curve accelerating when leaving the ground, and braking before touch the ground again.

<img width="30%" src="../images/leg-movement.png"/>

If the ground is not plain, the distance sensors in the leg detect that. When the zenith of the movement is reached, the actual distance is constantly compared to the expected distance. The z-coordinate of the touch point is adapted accordingly leading to a compressed or stretched second half of the movement:

<img width="30%" src="../images/leg-movement-terrain.png"/>
