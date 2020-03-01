  
public class Alien{
 
  PImage alien;
  int x;
  int y;
  int h;
  int w;
  boolean killed;
 
  public Alien(){
    alien=loadImage("./images/alien.png");
    x = 0;
    y = 0;
    image(alien, x, y, 60, 80);
    h=20;
    w=width/9;
    killed=false;
  }
  
  public void show(){
    image(alien, x, y, 60, 80);
  }
  
  public void alienShot(){
    image(alien, x, y, 0, 0);
  }
 
  public Alien(int q){
    alien=loadImage("./images/black.jpeg");
    x = 0;
    y = 0;
    image(alien, x, y, 1, 1);
    h=0;           
    w=0;           
    killed=false;
  }
}
  
  
