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
    cannon=loadImage("./images/cannon.png");
    x = 0;   //left-right middle of the screen
    y = 0;   //vertical middle of screen
    h=20;           //height of ball
    w=width/9;            //width of ball
    xVel=2;          //speed in horizontal direction
    yVel=2;          //speed in vertical direction
  }
  
  public void show(){
    rect(x,y,w,h);     //draws an ellipse at x,y location, if w=h then a circle is drawn
    fill(255,255,255);
}

  
  public void update(){
    x+=xVel;              //updates the ball to a new x and y position
    y+=yVel;
  
  
  


  }
}
