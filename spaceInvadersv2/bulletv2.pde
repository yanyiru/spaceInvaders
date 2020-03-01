public class Bullet{
 
  PImage cannon;
  int x;
  int y;
  int h;
  int w;
  float xVel;
  float yVel;
 
  //constructor
  public Bullet(){
    imageMode(CENTER);
    strokeWeight(0);
    cannon=loadImage("./images/cannon.png");
    x = width;
    y = height;
    h=10;
    w=5;
    yVel=-10;
    shot = false;
  }
  
  
  public void show(){
    fill(0,255,0);
    rect(x,y,w,h);
}

  
  public void update(){
    y+=yVel;
  }
  
}
