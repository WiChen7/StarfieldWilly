Star[] field;
void setup(){
  background(255);
  size(400, 400);
  field=new Star[1000];
  field[field.length-1]=new Weird();
  for(int i=0; i<field.length-1; i++){
    field[i]=new Star();
  }
 
}

void draw(){
  fill(0);
  for(int i=0; i<field.length; i++){
    field[i].move();
    field[i].show();
  }
}

void mouseClicked(){
  for (int i=0;i<field.length; i++){
    field[i].reset();
  }
  rect(-1,-1,402,402);
  background(255);
}

class Star {
  int myColor;
  float xSpd, ySpd, myX, myY;
  Star(){
    myX=200;
    myY=200;
    myColor=(int)(Math.random()*255);
    xSpd=(float)(Math.random()*2-1);
    ySpd=(float)(Math.random()*2-1);
  }
  void show(){
    noStroke();
    fill(255, myColor, 0);
    ellipse(myX, myY, 10, 10);
  }
  void move(){
    myX+=xSpd;
    myY+=ySpd;
    if(myX>400 || myY>400 || myX<0 || myY<0){
      myX=200;
      myY=200;
      xSpd=(float)(Math.random()*2-1);
      ySpd=(float)(Math.random()*2-1);
    }
  }
  void reset(){
    myX=200;
    myY=200;
  }
}

class Weird extends Star{
  Weird(){
    myX=200;
    myY=200;
    myColor=(int)(Math.random()*255);
    xSpd=(float)(Math.random()*2-1);
    ySpd=(float)(Math.random()*2-1);
  }
  void show(){
    noStroke();
    fill(0,0,255);
    ellipse(myX, myY, 30, 30);
  }
}
