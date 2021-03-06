Navigation is happening on the basis of the [ROS navigation stack](http://wiki.ros.org/navigation). It uses a [SLAM map](http://wiki.ros.org/hector_slam) indicating free and occupied grid cells and a [costmap](http://wiki.ros.org/costmap_2d) indicating if the pentapod can stand on a grid cell with a healthy distance to any wall while considerung the dimensions of the bot. This costmap is originally intended for navigation, but helps in finding our navigation target as well.


# Finding dark scary holes

Being a chicken-hearted creature, the pentapod searches for a hole to hide. Technically, this is a free spot on the SLAM map with a safe distance to walls, but  still as close as possible to all walls. This means, a good place to hide has the shape of an U where the bot can navigate to, but is surrounded by walls besides a small entry. The picture below shows the best corner that is surrounded by walls within 300°.

<img width="400"  src="../images/navigation-find-dark-holes-candidates.png"/>  

But how to find holes like that? The map consists of walls and a collision area (= ROS costmap), where the bot would crash into a wall. The collision area has descrete values representing the distance to the closest wall. 

Lets consider the magnified situation in a corner: First of all, the pivot grid cell has to be free on the SLAM map. Then we count the number of surrounding grid cells with a distance of two cells. The number of grid cells that are either close to a wall or in collision to a wall needs to be at least half of the total number of surrounding cells. For the pivot cell, we have 12 out of 21 cells which are close or colliding. So, this point is a good dark hole candidate.

<img width="500"  src="../images/navigation-find-dark-holes.png"/>  

Now we find out if the hole is not only dark but also scary. For that purpose, we define the scaryness *s* by the integrated reciprocal distance to the wall over 360°. *r* is the radius of the robot. 

<img width="200"  src="../images/scaryness-formula.png"/>  

This term sums up the reciprocal of the area between the foot print of the robot and the walls circle describing the robot, i.e. returns a value describing how close the walls are.
The closer the walls, the bigger gets the scaryness *s*. The highest scaryness value of 1.0  is achieved within a circular hole that represents the foot print of the robot.

To implement that in an efficient manner, we

* identify grid cell candidates by looking for free grid cells on the slam map which are surrounded by at least 50% of close or colliding cells. By that definition, we identify all corners. Now, we 
* compute the scaryness of these candidates by sending out *n* (e.g. 8) rays and sum up their reciprocal distance to a wall. If the ray hits no wall, assume an infinite number. Divide by n and we get the scaryness.
