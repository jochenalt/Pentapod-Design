<img align="left" width="16%" src="../latest/videos/logo.gif"/>

When seeing a video about a walking Hexapod no one screams wow, that’s unbelievable. There must be more. For one, you could cut off one leg. Having 5 legs only is kinda creepy, and it might be a challenge to develop a gait with one missing leg where you cannot steal something from nature. And, you can spend 1/6 of the money for something else.

But, still kind of boring. So, I tried to give it a personality, something shy and chicken-hearted, but how to express that if you’re a slightly too big an insect with one missing leg? Hiding from anything that’s moving could be something. And, this would solve the issue what to to with the saved money of one leg: I could buy a Lidar sensor, put it on its head to identify suspicious subjects, then let it escape and hide in holes. That's really pathetic.

Typical Hexapods have 3-5 DOF per leg, and most of them have only one DOF that moves the leg from the left to the right while all other DOFs move up and down. I never got the idea behind that design, since when looking at most of the hexapods you get the impression that the goal was to implement a brutal & stomping gait by moving the full mass of a leg the whole time. In nature, insects do not stomp. Those who make women scream have crawling movements with feet that carefully check out the ground ahead. This requires a turning hip or knee. 
<img align="right" width="10%" src="./images/image001.jpg" >

<img width=50% src="./images/image002.png" >

The blue lines illustrate the leg consisting of the joints for hip, thigh, knee and foot.
The turning knee allows to move the toe to the left and the right without moving the tibia. This should allow more efficient movements since the tibia moves less compared to a classical design without a turning knee.

The effect can be seen here, this one is a classical stomping version without a turning knee (definitely not creepy).

<img  width=50% src="../latest/videos/uncreepywalk.gif"/>

This is the version with a turning knee (aiiiihhhh, creepy!!!).

<img  width=50% src="../latest/videos/creepywalk.gif"/>

To walk in uneven terrain, it needs to know  the distance of each toe to the ground. Although it might be sufficient to know if the toe touches the ground,  this would surprise the gait controller forcing it to react very abruptly. In contrast, constantly knowing the distance allows a smoother gait that can decelerate in advance before touching the ground. So, I decided to go with a cheap laser distance controller built in each leg.


