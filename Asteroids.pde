class Asteroid extends Floater{
  private double rotSpeed= (Math.random()*11)-5;
  public Asteroid(){
    corners = 6;
    xCorners =  new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -24+((int)(Math.random()*10)-5);
    yCorners[0] = -32+((int)(Math.random()*10)-5);
    xCorners[1] = 28+((int)(Math.random()*10)-5);
    yCorners[1] = -32+((int)(Math.random()*10)-5);
    xCorners[2] = 36+((int)(Math.random()*10)-5);
    yCorners[2] = 0+((int)(Math.random()*10)-5);
    xCorners[3] = 20+((int)(Math.random()*10)-5);
    yCorners[3] = 28+((int)(Math.random()*10)-5);
    xCorners[4] = -4+((int)(Math.random()*10)-5);
    yCorners[4] = 23+((int)(Math.random()*10)-5);
    xCorners[5] = -20+((int)(Math.random()*10)-5);
    yCorners[5] = 0+((int)(Math.random()*10)-5);
    myColor = color(#C6BCBC);
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    myXspeed = Math.random()*5;
    myYspeed = Math.random()*5;
    myPointDirection = 90;
  }
    public void move ()   //move the floater in the current direction of travel
  {      
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
