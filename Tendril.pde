class Tendril
{
  public final static int SEG_LENGTH=4;
  private int myNumSegments,myX,myY;
  private double myAngle;
  
  public Tendril(int len,double theta,int x,int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX=x;
    myY=y;
  }
  public void show()
  {
    int startX = myX;
    int startY = myY;
    stroke((int)(Math.random()*255), 0, (int)(Math.random()*255),90);
    for(int i=0;i<myNumSegments;i++){
      myAngle+=Math.random()*0.4-0.2;
      int endX = startX+(int)(SEG_LENGTH*Math.cos(myAngle));
      int endY = startY+(int)(SEG_LENGTH*Math.sin(myAngle));
      line(startX,startY,endX,endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments>10){
      Cluster newC = new Cluster(myNumSegments/4,startX,startY);
    }
  }
}
