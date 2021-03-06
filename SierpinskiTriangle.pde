int limit = 10;
int r = 125;
int g = 249; 
int b = 255;
int o = 140;
public void setup()
{
  size(600,600);
  background(0);
}
public void draw()
{
  fill(r,g,b,o);
  background(0);
  sierpinski(0,600,300);
  sierpinski(300,600,300);
  sierpinski(0,300,300);
  sierpinski(300,300,300);

}
public void mouseDragged()//optional
{
  limit = mouseX/4;
  r = (int)(Math.random()*255);
  g = (int)(Math.random()*255);
  b = (int)(Math.random()*255);
  o = (int)(Math.random()*100) + 40;

}
public void sierpinski(int x, int y, int len) 
{
  if(len > limit && len > 10)
  {
   sierpinski(x,y,len/2);
   sierpinski(x+(len/2),y,len/2);
   sierpinski(x+(len/4),y-(len/2),len/2);
  }
  else
  {
   triangle(x,y,x+len,y,x+len/2,y-len);
  }
}