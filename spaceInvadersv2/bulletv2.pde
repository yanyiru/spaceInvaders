public class Bullet{
 
  //instance variables
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
    x = width;   //left-right middle of the screen
    y = height;   //vertical middle of screen
    h=10;           //height of ball
    w=5;            //width of ball
    yVel=-10;          //speed in vertical direction
    shot = false;
  }
  
  
  public void show(){
    fill(0,255,0);
    rect(x,y,w,h);     //draws an ellipse at x,y location, if w=h then a circle is drawn
}

  
  public void update(){           //updates the ball to a new x and y position
    y+=yVel;
  }
  
  public void shotAlien(){
     
  }
  
}
