function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  //Get the bounding boxes of both objects
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);

  //Check if the rectangles intersect
  return rect1.intersects(rect2);
}

//Example usage
var mc1:MovieClip = new MovieClip();
var mc2:MovieClip = new MovieClip();

if (checkCollision(mc1, mc2)) {
  trace("Collision detected!");
}

//This improved version uses the getBounds() method to obtain the rectangular boundaries and checks for intersection. This resolves the issue of only checking registration points.