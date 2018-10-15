// Creating the animals variable
JSONArray colours;

// Setting up the program
void setup() {
  size(400,400);
 // Loading the animals array that was created earlier
 colours = loadJSONArray("colours2.json");
 //
 for (int i=0; i < colours.size(); i++) {
   //
   JSONObject a = colours.getJSONObject(i);
   // Getting the name information from the JSON file
   int y = (i+1)*10;
   int r = a.getInt("r");
   int g = a.getInt("g");
   int b = a.getInt("b");
   fill(r,g,b);
   rect(10,y,10,10);
 }
 
 
}