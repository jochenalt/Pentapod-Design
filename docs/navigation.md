Navigation is happening on the basis of the [ROS navigation stack](http://wiki.ros.org/navigation). We have a [SLAM map](http://wiki.ros.org/hector_slam) indicating free and occupied grid cells and a [costmap](http://wiki.ros.org/costmap_2d) indicating if the pentapod can stand on a grid cell with a healthy distance to any wall while considerung the dimensions of the bot. This costmap is originally intended for navigation, but helps in finding our navigation target as well.


# Finding dark scary holes

Being a chicken-hearted creature, the pentapod searches for holes to hide. A hole is a free spot on the map with a safe distance to walls, but is still as close as possible to all walls. This means, a good place to hide has the shape of an U where the bot can navigate to, but is surrounded by walls besides a small entry. 

<img width="250"  src="../images/navigation-find-dark-holes-candidates.png"/>  

The map consists of walls and a collision area, where the bot would crash into a wall already. This collision area is actually the ROS costmap mentioned above, which has descrete values representing the distance to the closest wall. Lets consider the magnified situation in a corner: First of all, the pivot grid cell is free. Then, counting  the number of grids around the pivot point that are either close or already in collision with a wall gives more than half of the total number of grids (12 out of 21). So, this point is a good dark hole candidate.

<img width="250"  src="../images/navigation-find-dark-holes.png"/>  

Now we find out if the hole is not only dark but scary. For that purpose, we define the scaryness *s* by the integrated reciprocal distance to the wall over 360°.  

<img width="250"  src="../images/scaryness-formula.png"/>  

The more scary, the closer are all walls. The highest scaryness value is achieved within a circular hole with no entry.

To implement that in an efficient manner, we
- identify grid candidates by looking for free grids on the slam map that have more than half collision points in a distance of max. two grids.
- compute the scaryness of these candidates by sending out *n* (e.g. 8) rays and sums up their reciprocal distance to a wall. Divide by n. If the ray hits no wall, assume an infinite number.
