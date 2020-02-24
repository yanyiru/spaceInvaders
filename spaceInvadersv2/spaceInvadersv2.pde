PImage cannon;
Alien[] alien;
float x;
float y;
Bullet b;
boolean shot;

public void setup(){
  size(1200,800);
  imageMode(CENTER);
  rectMode(CENTER);
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
  /*for(int l = 0; l < alien.length;l++){
    if(((alien[l].x-(alien[l].w/2))<=(b.x-b.w/2))&&((alien[l].x+(alien[l].w/2))>=(b.x+b.w/2))&&((alien[l].y+(alien[l].h/2))<=(b.y-b.h/2))){
      alien[l].shootAlien();
      shot=false;
    }
  }*/
  checkKeyPresses();
  if(shot){
    b.show();
    b.update();
    if(b.y<=0){
      shot=false;
    }
  }
  int k = 0;
  for(int l = 0; l < alien.length;l++){
    for(int i = 0; i < 5; i++){
      for(int j = 0; j < 9; j++){
        if(second()%2==0){
          if(second()%20==1||second()%20==0){
            alien[k].x=(j+3)*((width/15))-90;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==2||second()%20==19){
            alien[k].x=(j+3)*((width/15))-60;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==3||second()%20==18){
            alien[k].x=(j+3)*((width/15))-30;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==4||second()%20==17){
            alien[k].x=(j+3)*((width/15))+0;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==5||second()%20==16){
            alien[k].x=(j+3)*((width/15))+30;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==6||second()%20==15){
            alien[k].x=(j+3)*((width/15))+60;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==7||second()%20==14){
            alien[k].x=(j+3)*((width/15))+90;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==8||second()%20==13){
            alien[k].x=(j+3)*((width/15))+120;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==9||second()%20==12){
            alien[k].x=(j+3)*((width/15))+150;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
          else if(second()%20==10||second()%20==11){
            alien[k].x=(j+3)*((width/15))+180;
            alien[k].y=((i+2)*50)+40;
            alien[k].show();
            k++;
          }
        }
        else if(second()%2==1){
          if(second()%20==1||second()%20==0){
            alien[k].x=(j+3)*((width/15))-90;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==2||second()%20==19){
            alien[k].x=(j+3)*((width/15))-60;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==3||second()%20==18){
            alien[k].x=(j+3)*((width/15))-30;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==4||second()%20==17){
            alien[k].x=(j+3)*((width/15))+0;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==5||second()%20==16){
            alien[k].x=(j+3)*((width/15))+30;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==6||second()%20==15){
            alien[k].x=(j+3)*((width/15))+60;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==7||second()%20==14){
            alien[k].x=(j+3)*((width/15))+90;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==8||second()%20==13){
            alien[k].x=(j+3)*((width/15))+120;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==9||second()%20==12){
            alien[k].x=(j+3)*((width/15))+150;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
          else if(second()%20==10||second()%20==11){
            alien[k].x=(j+3)*((width/15))+180;
            alien[k].y=((i+2)*50)+20;
            alien[k].show();
            k++;
          }
        }
      }
    }
    if(((alien[l].x-(alien[l].w/2))<=(b.x-b.w/2))&&((alien[l].x+(alien[l].w/2))>=(b.x+b.w/2))&&((alien[l].y+(alien[l].h/2))<=(b.y-b.h/2))){
      alien[l].shootAlien();
      shot=false;
    }
  }
  if(shot){
    b.show();
    b.update();
  }
  image(cannon,x,y,50,50);
   
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
      if(shot==false){
        if(key==' '){
            println("space");
            b=new Bullet();
            b.x=int(x);
            b.y=int(y);
            b.w=5;
            b.h=10;
            shot=true;
            
          }
            
    }
}
  }
 
/*
void alienShot(){
  for(int i = 0; i < alien.length;i++){
    if(((alien[i].x-(alien[i].w/2))<=(b.x-b.w/2))&&((alien[i].x+(alien[i].w/2))>=(b.x+b.w/2))&&((alien[i].y+(alien[i].h/2))<=(b.y-b.h/2))){
      alien[i].shootAlien();
      shot=false;
    }
  }
}*/
/*
void alienShot(){
    
}
*/
