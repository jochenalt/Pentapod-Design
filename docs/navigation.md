Navigation is happening on the basis of the [ROS navigation stack](http://wiki.ros.org/navigation). So, we have a [SLAM map](http://wiki.ros.org/hector_slam) indicating free and occupied grids and a costmap[costmap](http://wiki.ros.org/costmap_2d) indicating if the pentapod can stand on a grid with a healthy distance to any wall while considerung dimensions of bot. This costmap is originally intended to be used for navigation, but helps in finding a navigation target as well.

# Finding dark scary holes

Being a chicken-hearted creature, the pentapod searches for holes to hide. A hole is a free spot on the map with a safe distance to walls, but is still as close as possible to all walls. This means, a good place to hide has the shape of an U where the bot can navigate to, but is surrounded by walls besides a small entry. 

<img width="250"  src="../images/navigation-find-dark-holes-candidates.png"/>  

The map is represented as a grid with walls and a collision area, where the bot would crash into a wall already. This collision area is actually the ROS costmap mentioned above, which has descrete values representing the distance to the closest wall. Lets consider the situation in a corner: Counting the number of grids around the pivot point that are either close or already in collision with a wall gives more than half of the total number of grids (12 out of 21) and the considered point is free. So, this point is a candidate for a dark hole. 

<img width=250  src="../images/navigation-find-dark-holes.png"/>  

Now we need to find out if the hole is scary enough. For that purpose, we define the scaryness *s* by the integrated reciprocal distance to the wall over 360°.  

<img width="100"  src="../images/scaryness-formula.png"/>  

The more scary, the closer are the walls. The highest scaryness value has a circular hole with no entry.

To implement that in an efficient manner, we
* identify grid candidates by looking for free grids on the slam map that have more than half collision points in a distance of max. two grids.
* compute the scaryness of these candidates by sending out *n* (e.g. 8) rays and sums up their reciprocal distance to a wall. Divide by n. If the ray hits no wall, assume an infinite number.
