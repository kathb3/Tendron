public void setup()
{
  size(500, 500);  
  frameRate(60);
}
public void draw()
{
  background(0,0,0,10);
  strokeWeight(2);
  Cluster c = new Cluster(60,mouseX,mouseY);
}
public void mousePressed()
{
  redraw();
}
