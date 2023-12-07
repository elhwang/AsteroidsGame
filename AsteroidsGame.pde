
//your variable declSarations here
star [] nightsky = new star [500];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> Rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> Shots = new ArrayList <Bullet>();
public void setup()
{
  size(1000,1000);
  for(int i = 0; i < nightsky.length; i++){
    nightsky[i] = new star();
  }
  for(int i =0; i < 14; i++){
    Rocks.add(new Asteroid());
  }
}

public void draw()
{
  background(0);
for(int i = 0; i < nightsky.length; i++){
    nightsky[i].show();
}  
   for(int i =0; i < Shots.size(); i++){
     Shots.get(i).move();
     Shots.get(i).show();
  }
 for(int i =0; i < Rocks.size(); i++){
   Rocks.get(i).move();
   Rocks.get(i).show();
   float d = dist((float)bob.getX(), (float)bob.getY(), (float)Rocks.get(i).getX(),(float)Rocks.get(i).getY());
   if(d<40)
   Rocks.remove(i);
 }
  for(int i = 0; i < Shots.size();i++){
    for(int j = 0; j < Rocks.size(); j++){
      double d = dist((float)Rocks.get(j).getX(), (float)Rocks.get(j).getY(), (float)Shots.get(i).getX(),(float)Shots.get(i).getY());
    if(d<25){
    Shots.remove(i);
    Rocks.remove(j);
    break;
    }
  }
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
  if(key == ' '){
    Shots.add(new Bullet(bob));
  } 
}
