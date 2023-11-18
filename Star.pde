class star{
  private int myX, myY, myC;
  public star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    myC = color(255);
  }
  public void show(){
    fill(myC);
    ellipse(myX,myY,3,3);
      
}
}
