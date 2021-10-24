PVector steering;


creature[] l = new creature[1000];
void setup()
{
  size(640, 360, P2D);
  smooth(8);
  for(int i = 0; i < l.length; i++)
  {
  l[i] = new creature(width/2,height/2);
  }
   
  frameRate(60);
  background(0);
}
void draw()
{
  
  
 
  for(int i = 0; i < l.length; i++)
  {

  l[i].display();
  l[i].seek();
}
 
}
void mouseClicked()
{
  save("screenshot.png");
  println("screenshot taken");
}
