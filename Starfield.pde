NormalParticle[] clary=new NormalParticle[4000];
OddballParticle[] jace=new OddballParticle[200];
JumboParticle izzy=new JumboParticle();
Particle[]particles;

void setup()
{
  size(500,500);
  //array for normal particle
  for(int a=0; a<clary.length; a++)
  {
    clary[a]=new NormalParticle();  
  }
  //array for odd particle
  for(int b=0; b<jace.length; b++)
  {
    jace[b]=new OddballParticle();
  }
  particles=new Particle[100];
  for (int c=0; c<particles.length; c++)
  {
    particles[c]=new NormalParticle();
  }
  particles[4]=new OddballParticle();
  particles[2]=new JumboParticle();
}

void draw()
{
  background (0);
  for(int a=0; a<clary.length; a++)
  {
    clary[a].show();
    clary[a].move();
  }
   for (int d=0; d<jace.length; d++)
   {
     jace[d].show();
     jace[d].move();
   }
   izzy.move();
   izzy.show();
   for (int e=0; e<particles.length; e++)
   {
     particles[e].show();
     particles[e].move();
   }
}

class NormalParticle implements Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  NormalParticle()
  {
    myX=250;
    myY=250;
    myAngle=PI*4*Math.random();
    mySpeed=(Math.random()*4)-2;
  } 
  public void move()
  {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  public void show()
  {
    //int myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    int myColor=color(255);
    stroke(myColor);
    strokeWeight(2);
    point((float)myX,(float)myY);
  }
}

interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double myX, myY, myAngle, mySpeed;
  OddballParticle()
  {
    myX=250;
    myY=250;
    myAngle =PI*4*(Math.random());
    mySpeed =(Math.random()*1);
  } 
  public void move()
  {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  public void show()
  {
    //int myColor=color(255);
    int myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    fill(myColor);
    noStroke();
    rect((float)myX,(float)myY,5,5);
  }
}

class JumboParticle extends NormalParticle
{
  void show()
  {
    //stroke(185,0,0);
    //stroke(255);
    stroke((int)(Math.random()*255));
    strokeWeight(25);
    point((float)myX,(float)myY);
  }
}