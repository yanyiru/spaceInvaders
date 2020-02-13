PImage cannon;
Alien[] alien;
float x;
float y;
Bullet b;

public void setup(){
  size(600,400);
  imageMode(CENTER);
  alien=new Alien[45];
  for(int i=0; i<alien.length; i++){
    alien[i] = new Alien();             //creates a new ball object
  }
  x = width/2;
  y = (height/10)*8;
}

void draw(){
  background(0);
  cannon = loadImage("./images/cannon.png");
  image(cannon,x,y,50,50);
  checkKeyPresses();
  int k = 0;
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 9; j++){
        if(i%2==0){
          alien[k].x=j*(width/9)+35;
          alien[k].y=(i*50)+20;
          alien[k].show();
        }
        if(i%2==1){
          alien[k].x=j*(width/9)+35;
          alien[k].y=(i*50)+20;
          alien[k].show();
        }
        k++;
    }
  }
  
}

void checkKeyPresses(){
  if(keyPressed){
  
      if(keyCode==LEFT){
        x-=5;
        if(x<10 ){
          x=10;
        }
      }
      else if(keyCode==RIGHT){
        x+=5;
        if( x>width-10){
          x=(width-10);
        }
      }
      else if(keyCode==SPACE){
        
      }

  }
 }
