PImage cannon;
Alien[] alien;

public void setup(){
  size(600,400);
  imageMode(CENTER);
  alien=new Alien[45];
  for(int i=0; i<alien.length; i++){
    alien[i] = new Alien();             //creates a new ball object
  }
}

void draw(){
  background(0);
  cannon = loadImage("./images/cannon.png");
  image(cannon,width/2,(height/10)*8,50,50);
  int k = 0;
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 9; j++){
        if(i%2==0){
          alien[k].x=j*(width/9)+30;
          alien[k].y=(i*50)+20;
          alien[k].show();
        }
        if(i%2==1){
          alien[k].x=j*(width/9)+30;
          alien[k].y=(i*50)+20;
          alien[k].show();
        }
        k++;
    }
}
}
