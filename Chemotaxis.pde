Mouse CJ;
Mouse Bob;
cheese Jeff;
void setup()
{
  size(1000,500);
  frameRate(10);
  CJ = new Mouse(150);
  Bob = new Mouse(350);
  Jeff = new cheese();
}
void draw() 
{
  background(0,0,68);
  CJ.move();
  CJ.show();
  Bob.move();
  Bob.show();
  Jeff.show();

}

class Mouse 
{
  int myX, myY, myColor;
  Mouse(int y)
  {
    myY = y;
    myX = 250;
    myColor = color(128,128,128);
  }
  void move()
  {
    if(myX <= 850){
    myX = myX + (int)(Math.random()*30);
   // myY = myY + (int)(Math.random()*20)-9;
    if(dist(Bob.myX,Bob.myY,Jeff.myX, Bob.myY) < 100){
      if(dist(Bob.myX,Bob.myY,Jeff.myX,Bob.myY) > dist(CJ.myX,CJ.myY,Jeff.myX, CJ.myY)){
        if(CJ.myColor != color(0,0,225)){
    Bob.myColor = color(225,0,0);
        }
    }
  }
  else if(dist(CJ.myX,CJ.myY,Jeff.myX,CJ.myY) < 100){
    if(dist(Bob.myX,Bob.myY,Jeff.myX,Bob.myY) > dist(CJ.myX,CJ.myY,Jeff.myX, CJ.myY)){
      if(Bob.myColor != color(225,0,0)){
    CJ.myColor = color(0,0,225);
      }
    }
  }
  }
  }
  void show()
  {
    ellipse(myX+75,myY+5,23,14);
    fill(myColor);
    noStroke();
    ellipse(myX,myY,100,63);
    ellipse(myX+40,myY+7,80,40);
    fill(225,225,225);
    ellipse(myX+57,myY+3,12,12);
      fill(0);
      ellipse(myX+58,myY+3,4,4);
      fill(240,190,240);
     
  }
}

class cheese
{
  int myX, myY, myColor;
  cheese(){
    myX = 850;
    myY = 250;
    myColor = color(255,222,0);
  }
  void show()
  {
    fill(myColor);

    arc(myX,myY,170,145,0,PI+1.4/2*PI);
}

}
