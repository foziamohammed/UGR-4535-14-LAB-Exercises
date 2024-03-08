void main() {
  const speedOfLight = 299792458; 

 
  print("Enter the distance (in meters):");
  String userInput = stdin.readLineSync()!;
  double distance = double.parse(userInput);


  double time = distance / speedOfLight;

  print("The time it takes for light to travel $distance meters is $time seconds.");
}