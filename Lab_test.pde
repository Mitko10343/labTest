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
  
  //Calls tge methods that load the data into class constructor and then adds
  //the data from the class into the Arraylist
  loadData();
  //calls the method that prints out the data that has been added into the test
  printStar();
}

void draw()
{
  background(0);
  //call mnethod for drawing the grid
  drawGrid();
  //call method for plotting the stars
  plotStars();
  
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

//A method that draws the grid
void drawGrid()
{
  int lineX = 50;
  int lineY =50;
  int gap = (width-100)/10;
  
  //Drawing the grid
  strokeWeight(1);
  stroke(200,75,75);
  for(int i=-5; i<6; i++)
  {
    //text() prints the x axis values
    text(i,lineX,lineY-10);
    line(lineX,lineY,lineX,height-lineY);
    lineX = lineX+gap;   
  }
  lineX =50;
  for(int i=-5; i<6; i++)
  {
    //text printing y values
    text(i,lineX-20,lineY);
    line(lineX,lineY,width-lineX,lineY);
    lineY = lineY+gap;   
  }
}

//Doesnt work properly , but plz gib some marks :(
void plotStars()
{
  int flag;
  float xPos;
  float yPos;
  
  float Xratio;
  float Yratio;
  
  for(int i=0; i<starslist.size(); i++)
  {
    //Check if a plannet is habitable before it is plotted
    //if flag =1 then proceed
    if((flag = ((Stars)starslist.get(i)).flag) == 1)
    {
      //Getting the x and y coordinates from the class
      xPos = ((Stars)starslist.get(i)).x;
      yPos = ((Stars)starslist.get(i)).y;
   
      //scaling the x and y coordinates
      //I cant get it to scale correctly 
      //but you if you comment the code out you can see that some planets are being pin pointed on the to right corner of the screen :(
      
      /*if(xPos <0)
      {
        xPos = xPos*200;
      }
      else 
      {
        xPos = 200/xPos;
      }
      
      if(yPos<0)
      {
        yPos = yPos*200;
      }
      else
      {
        yPos = 200/yPos;
      }*/
      
      stroke(255,100,0);
      line(xPos,yPos,xPos+3,yPos);
      line(xPos,yPos,xPos,yPos+3);
      line(xPos,yPos,xPos,yPos-3);
      line(xPos,yPos,xPos-3,yPos);
    }
  }
  
}