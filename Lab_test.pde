//Labt test1 
//Writen by: Dimiter Dinkov
//Student number C15334276

//variable for the table all the data will be store in from the file
Table table;

void setup()
{
  size(800,800);
  //Data read into table
  table = loadTable("Data.csv","header");
  readData();
}

void draw()
{
  background(0);
  
}

//Method that reads the data and displays what it read
void readData()
{
   //reading in the data from the file
  for(TableRow row : table.rows())
  {
    //Getting the given rows and imputs them into the variables in class
    Stars stars = new Stars(
       row.getInt(2),
       row.getString(3),
       row.getFloat(12),
       row.getFloat(13),
       row.getFloat(14),
       row.getFloat(15),
       row.getFloat(16)
     );
     
     //Display the data just read into the class
     println(stars.flag+"\t"+stars.displayName+"\t"+stars.distance+"\t"+stars.x+","+stars.y+","+stars.z+"\t"+stars.starSize+"\n");
  }
}