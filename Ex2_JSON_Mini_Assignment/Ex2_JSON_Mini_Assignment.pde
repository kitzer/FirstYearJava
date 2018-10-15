// Creating the animals variable
JSONArray animals;

// Setting up the program
void setup() {
 // Loading the animals array that was created earlier
 animals = loadJSONArray("ex1_animals.json");
 //
 for (int i=0; i < animals.size(); i++) {
   //
   JSONObject a = animals.getJSONObject(i);
   // Getting the name information from the JSON file
   String name = a.getString("name");
   // Getting the species information from the JSON file
   String species = a.getString("species");
   // Printing the name and species to the console
   println(name + "," +species);
 }
 
 
}