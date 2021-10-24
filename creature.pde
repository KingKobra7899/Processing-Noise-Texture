class creature {  
  PVector desired;
  PVector vel;  
  PVector steering;
  float energy = 500;
  float x = random(width); //starting x
  float y = random(height); //starting y
  float theta;
  float xdist;
  float ydist;
  float speed;
  float textx;
  float texty;
  float r = 7;
  boolean alive = true;
  float maxspeed = 5;
  public creature(float x, float y) {
    this.x = x;
    this.y = y;
  }
  PVector loc = new PVector(x, y);
  void seek()
  {
    PVector vel = new PVector(random(-energy/100,energy/100),random(-energy/100,energy/100));
    energy -= 1;
    loc.add(vel);
    if (loc.x>width)
    {
      loc.x = width;
    } else if (loc.x<0)
    {
      loc.x = 0;
    }
    if (loc.y>height)
    {
      loc.y = height;
    } else if (loc.y<0)
    {
      loc.y = 0;
    }
  }



  void display()
  {  
   
    strokeWeight(1);
    stroke(energy);
    point(loc.x,loc.y);
}
}
  
