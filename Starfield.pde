//your code here
Particle [] star = new Particle[500];

void setup()
{
  //your code here
  noStroke();
  size(600, 600);
  for (int i = 0; i < star.length; i++)
    star[i] = new Particle();
  for (int i = 400; i < star.length; i++)
    star[i] = new OddballParticle();
}
void draw()
{
  //your code here
  background(0);
  for (int i = 0; i < star.length; i++) {
    star[i].move();
    star[i].show();
  }
}
class Particle
{
  //your code here
  double myX, myY, mySpeed, myAngle;
  int redColor, greenColor, blueColor;
  float mySize;
  Particle() {
    myX = 300;
    myY = 300;
    mySpeed = Math.random()*2;
    myAngle = Math.random()*2*Math.PI;
    redColor = 225;
    greenColor = 225;
    blueColor = 225;
    mySize = (float)(Math.random()*4)+1;
  }
  void move() {
    if (myX > 600) {
      myX = 300;
      myY = 300;
      myAngle = Math.random()*2*Math.PI;
      mySpeed = (Math.random()*2)+1;
    } else if (myY > 600) {
      myY = 300;
      myX = 300;
      myAngle = Math.random()*2*Math.PI;
      mySpeed = Math.random()*2;
    }
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show() {
    fill(redColor, greenColor, blueColor);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  //your code here
    OddballParticle() {
      myX = 300;
      myY = 300;
      mySpeed = 0;
      myAngle = Math.random()*2*Math.PI;
      redColor = 255;
      greenColor = 255;
      blueColor = (int)(Math.random()*50)+200;
      mySize = (float)(Math.random()*4)+1;
    }
    void move() {
      myX = myX + (Math.random()*6)-3;
      myY = myY + (Math.random()*6)-3;
    }
}
