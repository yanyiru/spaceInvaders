  
public class Alien{
 
  //instance variables
  int x;
  int y;
  int h;
  int w;
  boolean shot;
 
  //constructor
  public Alien(){
    println(width);
    x = 0;   //left-right middle of the screen
    y = 0;   //vertical middle of screen
    h=20;           //height of ball
    w=width/9;            //width of ball
    shot = false;
  }
  public void show(){
    rect(x,y,w,h);     //draws an ellipse at x,y location, if w=h then a circle is drawn
    fill(255,255,255);
}

  public void brickCollision(){
    if(shot==false);
      if((x<(b.x+(b.w/2))) && ((b.x+(b.w/2))<(x+w)) && y<(b.y+(b.w/2)) && (b.y+(b.w/2))< (y+h)){
      b.yVel*=-1;
      breakBrick();
    }
  }
  
  public void breakBrick() {
    broken = true;
    w=0;
    h=0;
  }
  
  


}
