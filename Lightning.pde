int startX = 20;
int startY = 150;
int endX = 20;
int endY = 150;
int R = (int)(Math.random()*256);
int G = (int)(Math.random()*256);
int B= (int)(Math.random()*256);

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(255,255,255);
}
void draw()
{

  int x = 20;
  while(x < 280)
  {
  stroke(0,0,0);
  line(x,150,x,150);
  x = x + 10;
  }

  line(20,20,20,280);
  line(20,280,280,280);
  
  while (endX < 280) 
  {
   endX = startX + (int)(Math.random()* 8);
   endY = startY + (int)(Math.random()* 19)-9;
   line (startX, startY, endX, endY);
   startX = endX;
   startY = endY;
   if (endY < 150)
  {
    stroke (0,255,0);
  }
   if (endY > 150)
  {
    stroke (255,0,0);
  }
  }
}
void mousePressed()
{
  startX = 20;
  startY = 150;
  endX = 20;
  endY = 150;
  background(255,255,255);
  R = (int)(Math.random()*256);
  G = (int)(Math.random()*256);
  B= (int)(Math.random()*256);
}
