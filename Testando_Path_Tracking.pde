PVector a, b, sp;

void setup()
{
  size(400,400);
  
  
  b = new PVector (200,60);
}

void draw()
{
  background(0);
  strokeWeight(4);
  stroke(255);
  PVector pos = new PVector(100,200);
  
  PVector mouse = new PVector(mouseX,mouseY);
  PVector a =  new PVector();
  a = mouse.sub(pos);
  
  line(pos.x, pos.y, pos.x + a.x, pos.y + a.y);
  line(pos.x, pos.y, pos.x + b.x, pos.y + b.y);
  
  sp = vectorProjection(a,b);
  strokeWeight(8);
  stroke(0,0,255);
  line(pos.x, pos.y, pos.x + sp.x, pos.y + sp.y);
  
  fill(0,255,0);
  noStroke();
  circle(pos.x,pos.y,8);
  
  
  
}

PVector vectorProjection(PVector a,PVector b)
{
  PVector bCopy = b.copy().normalize();
  float vp = a.dot(bCopy);
  bCopy.mult(vp);
  return bCopy;
}
