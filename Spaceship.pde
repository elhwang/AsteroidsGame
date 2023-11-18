class Spaceship extends Floater{
  public Spaceship(){
    myColor = color(211,27,222);
    myCenterX = 500;
    myCenterY = 500;
    corners = 3;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -16;
    yCorners[0] = -16;
    xCorners[1] = 32;
    yCorners[1] = 0;
    xCorners[2] = -16;
    yCorners[2] = 16;
  }
}
