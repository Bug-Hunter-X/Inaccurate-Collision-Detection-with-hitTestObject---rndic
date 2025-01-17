function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  return obj1.hitTestObject(obj2);
}

//Example usage
var mc1:MovieClip = new MovieClip();
var mc2:MovieClip = new MovieClip();

if (checkCollision(mc1, mc2)) {
  trace("Collision detected!");
}

//Problem: This code will only detect collisions if both MovieClips are on the same stage and their registration points overlap precisely.

//In reality, objects are rectangular and need to use their bounding boxes. The hitTestPoint method only checks a single point.