class Stars
{
  int flag;
  String displayName;
  float distance;
  float x;
  float y;
  float z;
  float starSize;
  
  Stars(int flag,String displayName,float distance,float x, float y, float z, float starSize)
  {
    this.flag = flag;
    this.displayName = displayName;
    this.distance = distance;
    this.x = x;
    this.y = y;
    this.z = z;
    this.starSize = starSize;
  }
  
  //converting the class object into a string
  String toString()
  {
    return flag+"\t"+displayName+"\t"+distance+"\t"+x+","+y+","+z+"\t"+starSize;
  }
}