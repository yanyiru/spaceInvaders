PImage cannon;
Alien[] alien;
float x;
float y;
Bullet b;
boolean shot;

public void setup(){
  size(1200,800);
  imageMode(CENTER);
  alien=new Alien[45]; 
  for(int i=0; i<alien.length; i++){
    alien[i] = new Alien();             //creates a new alien object
  }
  x = width/2;
  y = (height/10)*8;
  shot = false;
}

void draw(){
  println(shot);
  println(second());
  background(0);
  cannon = loadImage("./images/cannon.png");
  checkKeyPresses();
  int k = 0;
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 9; j++){
      if(second()%4==2||second()%4==0){
        alien[k].x=(j+3)*((width/15))+20;
        alien[k].y=((i+2)*50)+40;
        alien[k].show();
        k++;
      }
      else if(second()%4==1){
        alien[k].x=(j+3)*((width/15))+10;
        alien[k].y=((i+2)*50)+40;
        alien[k].show();
        k++;
      }
      else if(second()%4==3){
        alien[k].x=(j+3)*((width/15))+30;
        alien[k].y=((i+2)*50)+40;
        alien[k].show();
        k++;
      }
    }
  }
  if(shot){
    b.show();
    b.update();
  }
  image(cannon,x,y,50,50);
  for(int i = 0; i < alien.length;i++){
    //alien[i].alienShot();
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
      else if(key==' '){
        if(shot==false){
          shot=true;
          println("space");
          b=new Bullet();
          b.x=int(x);
          b.y=int(y);
          if(b.y>=height){
            shot=false;
          }
      }
  }
 }
 
}
