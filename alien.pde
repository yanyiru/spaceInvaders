  
public class Alien{
 
  //instance variables
  PImage alien;
  int x;
  int y;
  int h;
  int w;
  boolean killed;
 
  //constructor
  public Alien(){
    alien=loadImage("./images/alien.png");
    x = 0;   //left-right middle of the screen
    y = 0;   //vertical middle of screen
    image(alien, x, y, 60, 80);
    h=20;           //height of ball
    w=width/9;            //width of ball
    killed=false;
  }
  
  public void show(){
    image(alien, x, y, 60, 80);
  }
  


    public void shootAlien() {
    w=0;
    h=0;
  }
  
  }
