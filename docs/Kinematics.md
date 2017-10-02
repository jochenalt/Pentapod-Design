Kinematics is about computation of the toe’s point out of the joint angles and vice versa. First is simple, latter is tricky. The coordinate systems are illustrated as follows, such that we can derive the Denavit Hardenberg.

<img width="400px" src="../images/image003.png"/>

The transformation from angle<sub>i</sub> to angle<sub>i+1</sub> is given via 

1. rotation around the x-axis by α

2. translation along the x-axis by α

3. translation along the z-axis by *d*, and

4. rotation around the z-axis by θ

So, the Denavit Hardenberg parameters are:

| Joint      | a[°]                  | d[mm]             | a[mm]            | θ[°]           |
|----------  | ----------------------| ----------------- | ---------------- | -------------- | 
| Hip        | *90°*                 | *d<sub>0</sub>*   | *0*              | θ<sub>0</sub>  |
| Thigh      | *90°*                 | *d<sub>1</sub>*   | *0*              | θ<sub>1</sub>  |
| Knee       | *90°+θ<sub>2</sub>*   |                   | *0*              | *0*             |                |
| Foot       | *0*                   | *d<sub>3</sub>*   | *0*              | θ<sub>3</sub>  |

According to the coordinate system above, θ<sub>2</sub> has an offset of 90°. The general definition of a Denavit-Hardenberg (DH) transformation is

&nbsp;&nbsp;&nbsp;&nbsp;<img  src="../images/image005.png"/>

which is a homogeneous matrix with two rotations (x,z) and two translations (x,z).
Combined with the DH parameters, the following DH matrixes define the transformation from one joint to its successor:

<img  align="left" src="../images/image006.png"/>

<img  align="left" src="../images/image007.png"/>

<img   src="../images/image008.png"/>

<img  align="left" src="../images/image008.png"/>

## Forward Kinematics

With the DH transformation matrixes at hand, computation of the leg’s pose out of the joint angles is straight forward. The matrix representing the gripper’s pose <img align="center"  src="../images/image010.png"/> is <img align="center" src="../images/image011.png"/> 
By multiplying the transformation matrix with the origin (as homogeneous vector), we get the absolute coordinates of the toe point (*TP*) centre point in world coordinate system (i.e. relative to the legs’s base).

&nbsp;&nbsp;&nbsp;&nbsp;<img  src="../images/image012.png"/>
That was easy. The tricky part comes now.


## Inverse Kinematics 

Inverse kinematics denotes the computation of all joint angles out of the toe’s position (TP). Since the leg has four joints, it is becomes clear that there is an infinite number of solutions for that, so I need to predefine one angle with an arbitrary definition. Having the objective in mind of moving the higher limbs of the leg as little as possible, I arbitrarily chose θ<sub>0</sub> and set it as angle bisector of the toe to the hip (from bird’s perspective):
&nbsp;&nbsp;&nbsp;&nbsp;<img align="left" src="../images/image013.png"/>
We get 

&nbsp;&nbsp;&nbsp;&nbsp;<img align="center" src="../images/image014.png"/>
Later on, we will need the coordinates of end of the first limb (A) which is <img align="center" src="../images/image015.png"/>

Computation of the second angle θ<sub>1</sub>  at point A requires a geometric analysis. The leg is denoted in blue, all construction lines are red.
&nbsp;&nbsp;&nbsp;&nbsp;<img align="left" src="../images/image016.png"/>

We consider the triangle from A, B and C. The two lines <img src="../images/image017.png"/> and <img src="../images/image017.png"/>are of fixed length. So, the point C is upon the circle with the centre H and the radius of the triangle’s height. Additionally, C is defined as function of θ<sub>0</sub> and θ<sub>1</sub>, so we should be able to derive θ<sub>1</sub> by intersecting the circle with C(θ<sub>0</sub> ,θ<sub>1</sub>).