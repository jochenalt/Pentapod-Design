Unfortunately, there's no example by nature about a gait with 5 legs. Since you need three legs to stand, two legs can lift. So the gait is just the same leg movement with a certain time shift specific per leg. The time shift is a static sequence that ensures that two legs in the air are opposite to each other to keep the stand stable all the time. 

The order of the gait sequence to achieve this is 

| t<sub>0</sub>| t<sub>1</sub> | t<sub>2</sub>| t<sub>3</sub>  | t<sub>4</sub>  |
|------------  | --------------| ------------ | -------------- | -------------- | 
| leg 1        | leg 3         | leg 5        | leg 2          | leg 4          |


<img src="../videos/gaittimeshift.gif"/>

The leg movement is modelled by a cubic bezier curve with the first support point in the middle of the gait and the second one right above the touch point. This gives a bent curve accelerating when leaving the ground, and braking before touch the ground again.

<img src="../images/leg-movement.png"/>

