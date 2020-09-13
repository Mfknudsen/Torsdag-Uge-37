//Task 2:
String name = "Mads Knudsen";
int age = 19;
boolean state = true;

//Task 3:
int lightState = 0;
color red = color(255, 0, 0), green = color(0, 255, 0), yellow = color(255, 204, 0), grey = color(100);

//Task 6:
int a = 10, b = 5;
int x = 14, y = 15, z = 1;

//Task 7:
int input = 21;

void setup() {
  size(1000, 1000);

  //Task 2:
  println("Task 1:");
  println("Hi, my name is " + name);
  println("I am " + age + " years old");
  if (state)
    println("I clap my hands");
  else
    println("I dont clap my hands");

  //Task 4:
  println("\nTask 4: \n Part a:");
  for (int i = 0; i < 21; i++) {
    println(i);
  }
  println(" Part b:");
  for (int i = 0; i < 21; i++) {
    if (i % 2 == 0)
      println(i);
  }
  println(" Part c:");
  int i = 0;
  while (i < 21) {
    if (i % 2 ==0)
      println(i);
    i++;
  }

  //Task 5:
  println("\nTask 5:");
  MethodOne();
  MethodTwo();

  //Task 6:
  println("\nTask 6: \n Part a:");
  if ((a+b) == 10 || (a == 10 || b == 10))
    println("Success!");
  else
    println("Failure!");

  println(" Part b:");
  if ((x+y+z) == 30 && !(x % 10 == 0 || y% 10 == 0 || z % 10 == 0))
    println("Success!");
  else
    println("Failure!");

  //Task 7:
  println("\nTask 7:");
  for (int j = (int)abs(input); j > -1; j--) {
    if (j == 6)
      println("Six");
    if (j == (int)floor(input / 2))
      println("HALF!");
    println(j);
  }
} 

void draw() {
  //Task 3:
  fill(0);
  rect(width / 2 - 200, height/ 2 - 450, 400, 900);
  if (lightState == 0 || lightState == 1)
    fill(red);
  else
    fill(grey);
  ellipse(width / 2, height / 2- 250, 225, 225);

  if (lightState == 1 || lightState == 3)
    fill(yellow);
  else
    fill(grey);
  ellipse(width / 2, height / 2, 225, 225);

  if (lightState == 2)
    fill(green);
  else
    fill(grey);
  ellipse(width / 2, height / 2+ 250, 225, 225);
}

void keyPressed() {
  //Task 3:
  lightState ++;
  if (lightState == 4)
    lightState = 0;
}

void MethodOne() {
  int i= 1000, max = 10;

  //The String was at a level lower then the print function.
  String output = "";

  if (i > max)
    output = "i is greater then "+max+".";

  println(" Part a: \n"+output);
}

void MethodTwo() {
  int weekDay = 5;
  boolean weekend = false;
  String[] names = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" };

  if (weekDay >= 5)
    weekend = true;

  println(" Part b:\nToday is "+names[weekDay]);

  if (weekend)
    println("It is weekend!");
}
