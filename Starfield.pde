Particle[] woo = new Particle[2000];
void setup(){
  size(800,600);
  for(int i = 0; i < 1; i++)
    woo[i] = new OddBall();
  for(int i = 1; i < woo.length; i++){
    woo[i] = new Particle();
  }
}
void draw(){
  background(0);
  for(int i = 0; i<woo.length; i++){
    woo[i].show();
    woo[i].move();
  }
}
class Particle{
  
  double myX, myY, myAngle, mySpeed;
  Particle(){
    myAngle = (Math.random()*(10*Math.PI));
    mySpeed = Math.random()*2;
    myX = 400;
    myY = 300;
  }
  void move(){
    myX = myX + (Math.cos(myAngle))*mySpeed;
    myY = myY + (Math.sin(myAngle))*mySpeed;
  }
  void show(){
    noStroke();
    fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
    ellipse((float)myX,(float)myY,2,2);
  }
}
class OddBall extends Particle{
    OddBall(){
      // oddball variables
    myAngle = (Math.random()*(30*Math.PI));
    mySpeed = Math.random()*0.5;
    myX = 400;
    myY = 300;
    }
    void show(){
     // alien follows the mouse
      if(mouseX > myX)
    myX = myX + (int)(Math.random()*1)+0.5;
    else
    myX = myX + (int)(Math.random()*1)-0.5;
    if(mouseY > myY)
    myY = myY + (int)(Math.random()*1)+0.5;
    else
    myY = myY + (int)(Math.random()*1)-0.5;
    noStroke();
    // alien
    fill(127,255,53);
    ellipse((float)myX,(float)myY-5,28,28);
    ellipse((float)myX,(float)myY,20,25);
    fill(0);
    // eyeballs
    ellipse((float)myX-5,(float)myY,8,7);
    ellipse((float)myX+5,(float)myY,8,7);
    // eye shine
    fill(127,255,53);
    ellipse((float)myX-5,(float)myY-1.5,3,2);
    ellipse((float)myX+5,(float)myY-1.5,3,2);
    // buccal fat removal
    stroke(5);
    fill(255,162,176);
    line((float)myX-9,(float)myY+4,(float)myX-3,(float)myY+6);
    line((float)myX+9,(float)myY+4,(float)myX+3,(float)myY+6);
  }
  }
