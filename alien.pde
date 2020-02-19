  
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
    shot = false;
    killed=false;
  }
  
  public void show(){
    image(alien, x, y, 60, 80);
  }
  
  public void alienShot(){
      if((x<(b.x+(b.w/2))) && ((b.x+(b.w/2))<(x+w)) && y<(b.y+(b.w/2)) && (b.y+(b.w/2))< (y+h)){
        shootAlien();
        killed=true;
      }  

    }
    public void shootAlien() {
    w=0;
    h=0;
  }
}
  
  
