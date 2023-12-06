
class Bullet extends Floater{
public Bullet(Spaceship bob){
  myColor = color(#FFEB52);
  myCenterX = bob.getX();
  myCenterY = bob.getY();
  myXspeed = bob.getXspeed();
  myYspeed = bob.getYspeed();
  myPointDirection = bob.getPointDirection();
  accelerate(5);
  }
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public void move(){
     myCenterX += myXspeed;    
    myCenterY += myYspeed;    
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
