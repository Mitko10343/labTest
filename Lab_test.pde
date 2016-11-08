//Labt test1 
//Writen by: Dimiter Dinkov
//Student number C15334276

//variable for the table all the data will be store in from the file
Table table;
//Array list for the star variable
ArrayList<Stars> starslist =  new ArrayList<Stars>();

void setup()
{
  size(800,800);
  //Data read into table
  table = loadTable("Data.csv","header");
  loadData();
  printStar();
}

void draw()
{
  background(0);
  
}

//Method that reads the data into a clas constructor
//and then adds the data from the class constructor onto an array list
void loadData()
{
   //reading in the data from the file
  for(TableRow row : table.rows())
  {
    //Getting data from a file and imputs them into the class constructor
    Stars stars = new Stars(
       row.getInt(2),
       row.getString(3),
       row.getFloat(12),
       row.getFloat(13),
       row.getFloat(14),
       row.getFloat(15),
       row.getFloat(16)
     );
     //Adding data onto array list from the class constructor
     starslist.add(stars);
     
     //Display the data just read into the class
     //Just for to make sure the correct data is added into class
     println(stars.flag+"\t"+stars.displayName+"\t"+stars.distance+"\t"+stars.x+","+stars.y+","+stars.z+"\t"+stars.starSize+"\n");
  }
}

//Method that will print all the data that was entered into the arrayList
void printStar()
{
  
  println("\n\nData stored into array list\n\n");
  
  //For each loop goest through every element of the array list
  //And displays its content
  for(Stars stars : starslist)
  {
    println(stars);
  }
}