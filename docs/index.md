<img align="left" width="10%" src="./images/image001.jpg" >

When seeing a video about a walking Hexapod no one screams wow, that’s unbelievable. There must be more. For one, you could cut off one leg. Having 5 legs only is uncommon (which is good), and might be a challenge to develop a gait with one missing leg where you cannot steal something from nature. And, you can spend 1/6 of the money for something else.
What else, not yet sufficient to get a wow. So, I tried to give it a personality, this time it should be something shy and chicken-hearted, but how to express that, if you’re an insect with one missing leg? Hiding from anything that’s moving could be something. And this was the solution to the previous question what you can do with the price of one leg: Buy a Lidar sensor and put it on its head to identify suspicious subjects and escape in holes.
Typical Hexapods have 3-5 DOF per leg, and most of them have only one DOF that moves the leg from the left to the right while all other DOFs move up and down. I never go the reason behind, since when looking at most of the hexapods you get the impression of a brutal & stomping gait since the entire leg including the thigh (or “femur”) is moving while *not* trying to minimize the mass that is to be accelerated. There’s just one hexapod I am aware of (“Weaver”) that spends one DOF for turning a leg such that the foot can move forward and backward without moving the femur. Unfortunately, this DOF is not used during walking but only to compensate standing on a ramp and levelling the body’s orientation.

<img align="left" width="30%" src="./images/image002.png" >

In order to minimize the moved mass, it seems natural to introduce a knee, what leads to a 4 DOF leg design with a turning possibility:
The blue lines illustrate the leg consisting of the joints hip, thigh, knee and foot.
The turning knee (later on θ<sub>2</sub>) allows to move the toe to the left and the right without moving the tibia. This should allow more efficient movements since the tibia moves less compared to a classical design without a turning knee.

To have the capability to walk in uneven terrain, there’s the need knowing the distance of a toe to the ground. Although it might be sufficient to know if the toe touches the ground,actually this surprises the gait controller all the time. Knowing the distance results in a smoother gait control that is able to accelerate and decallerate in advance. So, I decided to go with a cheap laser distance controller built in each leg.


