Kinematics is about computation of the toe’s point out of the joint angles and vice versa. First is simple, latter is tricky. 

The coordinate systems are illustrated as follows, to properly derive the Denavit Hardenberg transformation. 

<img width="400" src="../images/image003.png"/>

The transformation from *angle<sub>i</sub>* to *angle<sub>i+1</sub>* is given via 

1. rotation around the x-axis by *α*

2. translation along the x-axis by *α*

3. translation along the z-axis by *d*, and

4. rotation around the z-axis by *θ*

So, the Denavit Hardenberg parameters are:

| Joint      | a[°]                  | d[mm]             | a[mm]            | θ[°]           |
|----------  | ----------------------| ----------------- | ---------------- | -------------- | 
| Hip        | *90°*                 | *d<sub>0</sub>*   | *0*              | θ<sub>0</sub>  |
| Thigh      | *90°*                 | *d<sub>1</sub>*   | *0*              | θ<sub>1</sub>  |
| Knee       | *90°+θ<sub>2</sub>*   | *0*               | *0*              | *0*             |                |
| Foot       | *0*                   | *d<sub>3</sub>*   | *0*              | θ<sub>3</sub>  |

According to the coordinate system above, θ<sub>2</sub> has an offset of 90°. The general definition of a Denavit-Hardenberg (DH) transformation is

&nbsp;&nbsp;&nbsp;&nbsp;<img width=330 style="max-width: 330px;" src="../images/image005.png"/>  

which is a homogeneous matrix with two rotations (*x*,*z*) and two translations (*x*,*z*).
Combined with the DH parameters, the following DH matrixes define the transformation from one joint to its successor:

<img width=250 style="max-width: 250px;" src="../images/image006.png"/>  
<img width=250 style="max-width: 250px;" src="../images/image007.png"/>  
<img width=200 style="max-width: 200px;" src="../images/image008.png"/>  
<img width=200 style="max-width: 200px;" src="../images/image008.png"/>  

## Forward Kinematics of a Leg

With the *DH* transformation matrixes at hand, computation of the leg’s pose out of the joint angles is straight forward. The matrix representing the toe’s pose <img width="16" style="max-width: 16px;" src="../images/image010.png"/> is 

&nbsp;&nbsp;&nbsp;&nbsp;<img width="120" style="max-width: 120px;" src="../images/image011.png"/> 

By multiplying the transformation matrix with the origin (as homogeneous vector), we get the absolute coordinates of the toe point (*TP*) centre point in world coordinate system (i.e. relative to the legs’s base).

&nbsp;&nbsp;&nbsp;&nbsp;<img width="90" style="max-width: 90px;" src="../images/image012.png"/>

That was easy. The tricky part comes now.

## Inverse Kinematics of a Leg

Inverse kinematics denotes the computation of all joint angles out of the toe’s position (*TP*). Since the leg has four joints, it is becomes clear that there is an infinite number of solutions for that, so I need to predefine one angle with an arbitrary definition. Having the objective in mind of moving the higher limbs of the leg as little as possible, I arbitrarily chose *θ<sub>0</sub>* and set it as angle bisector of the toe to the hip (from bird’s perspective):

&nbsp;&nbsp;&nbsp;&nbsp;<img width="300" style="max-width: 300px;"  src="../images/image013.png"/>

We get 

&nbsp;&nbsp;&nbsp;&nbsp;<img width="180" style="max-width: 180px;" src="../images/image014.png"/>

Later on, we will need the coordinates of end of the first limb (*A*) which is <img width=110 style="max-width: 110px;"  src="../images/image015.png"/>

Computation of the second angle *θ<sub>1</sub>*  at point *A* requires a geometric analysis. The leg is denoted in blue, all construction lines are red.

&nbsp;&nbsp;&nbsp;&nbsp;<img width=400 style="max-width: 400px;"  src="../images/image016.png"/>

We consider the triangle from *A*, *B* and *C*. The two lines <img width=18 style="max-width: 15px;"  src="../images/image017.png"/> and <img width=20 style="max-width: 20px;"  src="../images/image018.png"/> are of fixed length. So, the point *C* is upon the circle with the centre H and the radius of the triangle’s height. Additionally, *C* is defined as function of *θ<sub>0</sub>* and *θ<sub>1</sub>*, so we should be able to derive *θ<sub>1</sub>* by intersecting the circle with *C(θ<sub>0</sub> ,θ<sub>1</sub>)*.

The only thing we need to do is to express that in terms of coordinates. First, we compute the length of *a*, *b* and *c*:

&nbsp;&nbsp;&nbsp;&nbsp;<img width=100 style="max-width: 100px;" src="../images/image019.png"/>

&nbsp;&nbsp;&nbsp;&nbsp;<img width=100 style="max-width: 100px;" src="../images/image020.png"/>

&nbsp;&nbsp;&nbsp;&nbsp;<img width=60 style="max-width: 60px;" src="../images/image021.png"/>

Now that the triangle is defined, we can compute the height <img width=50 style="max-width: 40px;" src="../images/image022.png"/> by Herons formula

&nbsp;&nbsp;&nbsp;&nbsp;<img width=350 style="max-width: 350px;" src="../images/image023.png"/>

The base of the height *H* is defined by 

&nbsp;&nbsp;&nbsp;&nbsp;<img width=200 style="max-width: 200px;"  src="../images/image024.png"/>

Now we need to define the circle *K* with radius *h* and centre *H*. This is done by *K = H sin(α) + T cos(α)* with *S* and *T* orthogonal to <img width=25 style="max-width: 25px;"  src="../images/image026.png"/> as well as *S* and *T* being orthogonal to each other.

&nbsp;&nbsp;&nbsp;&nbsp;<img width=200 style="max-width: 200px;"  src="../images/image027.png"/>

So, with the arbitrary assumption <img width=50 style="max-width: 50px;" src="../images/image028.png"/> and the length <img width=50 style="max-width: 50px;" src="../images/image029.png"/> we get 

&nbsp;&nbsp;&nbsp;&nbsp;<img width=350 style="max-width: 350px;" src="../images/image030.png"/>

(This equation could be simplified, but this way programming is easier by computing the y coordinate and deriving the x coordinate)
There are two possibilities for *S*, representing two configuration with knee up and knee down. We always take the healthy one where the knee is above the toe point. Finally, T is defined by its orthogonality to *S* and its length <img width=50 style="max-width: 50px;"  src="../images/image031.png"/>:

&nbsp;&nbsp;&nbsp;&nbsp;<img width=100 style="max-width: 100px;"  src="../images/image032.png"/>

Having the circle defined, we need to intersect it with the possible positions of *C*:

&nbsp;&nbsp;&nbsp;&nbsp;<img width=350 style="max-width: 350px;" src="../images/image033.png"/>


Hereby denotes <img width=180 style="max-width: 180px;" src="../images/image034.png"/> . We consider only the equations of *x* and *y* coordinates and solve these for *d<sub>1</sub>c<sub>1<sub>*. Equating gives

&nbsp;&nbsp;&nbsp;&nbsp;<img width=530 style="max-width: 530px;" src="../images/image036.png"/>

This needs to be solved by in order to get point *C*. Unfortunately, we have *sin* and *cos* in the equation, but luckily with the same parameter. Wikipedia helps with sinusoids:

&nbsp;&nbsp;&nbsp;&nbsp;<img width=600 style="max-width: 600px;" src="../images/image037.png"/>

This is used to solve the equation above for *α*:

&nbsp;&nbsp;&nbsp;&nbsp;<img width=400 style="max-width: 400px;" src="../images/image038.png"/>

&nbsp;&nbsp;&nbsp;&nbsp;<img width=400 style="max-width: 400px;" src="../images/image039.png"/>

&nbsp;&nbsp;&nbsp;&nbsp;<img width=350 style="max-width: 350px;" src="../images/image040.png"/>

Out of *α* we get *C* by <img width=160 style="max-width: 160px;" src="../images/image041.png"/>, out of *C* we compute *θ<sub>1</sub>* by considering the z-coordinate of *C*:

&nbsp;&nbsp;&nbsp;&nbsp;<img width=150 style="max-width: 150px;" src="../images/image042.png"/>

which results in 

&nbsp;&nbsp;&nbsp;&nbsp;<img width=100 style="max-width: 100px;" src="../images/image043.png"/>

The first angle is always the hardest, time for a beer.

We leave the knee-turn-angle *θ<sub>2</sub>* aside for a while and continue with the tibia *θ<sub>3</sub>*. This is done by considering the triangle *ABC*, and the angle at the point *C* represents *θ<sub>3</sub>*. In a fully elongated leg *θ<sub>3</sub>* is 0.
Therefore, <img width=150 style="max-width: 150px;" src="../images/image044.png"/> 

The last angle *θ<sub>2</sub>* is computed by use of

&nbsp;&nbsp;&nbsp;&nbsp;<img width=100 style="max-width: 100px;"  src="../images/image045.png"/>

So, let’s have a closer look into the transformation matrix <img width=6 style="max-width: 6px;" src="../images/image046.png"/> and check if there are some useful equations considering that we already have all other angles. Annoying multiplication results in

&nbsp;&nbsp;&nbsp;&nbsp;<img width=420 style="max-width: 420px;" src="../images/image047.png"/>

Since we need to compare this to the toe point, it is not necessary to compute the full matrix, the right column is sufficient. We are lucky, the third line has only one expression that depends on *θ<sub>2</sub>*, so we get

&nbsp;&nbsp;&nbsp;&nbsp;<img width=220 style="max-width: 220px;" src="../images/image048.png"/>

Again, *arcsin* results in two solutions, so we need the other coordinates as well to check which solution is valid.
That’s it. Surprisingly complex for a leg with only 4 degrees of freedom.

# Body Kinematics

Attaching 5 legs around the body requires a transformation as well, plus we might want to translate and rotate the belly. Since the leg kinematics computes the limb angles out of the toe in the hip's coordinate system, we need to translate each leg’s toe point into the hip’s coordinate system.

&nbsp;&nbsp;&nbsp;&nbsp;<img width=500 style="max-width: 500px;" src="../images/image049.png"/>

The pentapod’s pose is given in the body’s coordinate system, which origin is on the ground right below the body. The next coordinate system is owned by the belly which origin is the belly button. When the pentapod is in the default position, the belly coordinate system is translated in the z-axis by z-translation along the height of the belly. Finally, we have 5 hip coordinate systems which are x-translated by the distance of the belly to the hip and z-rotated by <img width=70 style="max-width: 70px;"  src="../images/image050.png"/>, where *n* is the number of the leg.
We define the transformation matrix *Belly* that defines the belly coordinate system out of the body coordinate system, that is a 3D rotation matrix plus a translation along the belly coordinates:

&nbsp;&nbsp;&nbsp;&nbsp;<img width=600 style="max-width: 600px;" src="../images/image051.png"/>

For each leg we have an own transformation matrix which is a rotation θ in the *xy*-pane around the  *z*-axis:

&nbsp;&nbsp;&nbsp;&nbsp;<img width=220 style="max-width: 220px;" src="../images/image052.png"/>


Having a point in one coordinate system and watching it from another one is done by multiplying it with the inverse transformation matrix. So, the toe point from the hips coordinate system *toe<sub>hip</sub>* is computed out of the toe point from the body’s coordinate system by 

&nbsp;&nbsp;&nbsp;&nbsp;<img width=200 style="max-width: 200px;" src="../images/image054.png"/>


Computing-wise, the inverse matrix is done by Gauss or similar approaches with a complexity of *o(nm/2)*, which might be bad for the performance. Luckily, the inverse of a symmetric rotation matrix is the transposed matrix, and the rest can be computed by 

&nbsp;&nbsp;&nbsp;&nbsp;<img width=180 style="max-width: 180px;" src="../images/image056.png"/>

which is much simpler.