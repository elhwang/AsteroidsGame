star [] nightsky = new star [500];
Spaceship bob = new Spaceship();
public void setup()
{
  size(1000,1000);
  for(int i = 0; i < nightsky.length; i++){
    nightsky[i] = new star();
  }
}

public void draw()
{
  background(0);
for(int i = 0; i < nightsky.length; i++){
    nightsky[i].show();
  }
 bob.show();
 bob.move();
}

public void keyPressed(){
  if(key == 'w'){
   bob.accelerate(0.3);
   
  }
  if(key == 's'){
  bob.accelerate(-0.3);
  }
  if(key == 'a'){
  bob.turn(-10);
  }
  if(key == 'd'){
  bob.turn(10);
  }
  if(key== 'f'){
    bob.hyper();
  }
    
}
