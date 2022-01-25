import 'dart:math';

// Chapter 4: Control Flow

enum AudioState {
  playing,
  paused,
  stopped,
}

void main() {
  print("Mini exercises");
  print("---------------------------");

  // 1. “Create a constant called myAge and set it to your age.”
  // 2. “Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.”

  const myAge = 33;
  const isTeenager = myAge > 13 && myAge < 19;
  print("I am a teenager? $isTeenager");
  print("---------------------------");

  // 1. “Create another constant named maryAge and set it to 30.”
  // 2. “Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and Mary are teenagers.”

  const maryAge = 30;
  const bothTeenagers = (maryAge > 13 && maryAge < 19) && isTeenager;
  print(bothTeenagers);
  print("---------------------------");

  // 1. “Create a String constant named reader and set it to your name.”
  // 2. “Create another String constant named ray and set it to 'Ray Wenderlich'.”
  // 3. “Create a Boolean constant named rayIsReader that uses string equality to determine if reader and ray are equal."

  const reader = "Leo";
  const ray = "Ray Wenderlich";
  const rayIsReader = reader == ray;
  print("Equality? $rayIsReader.");
  print("---------------------------");

  // 1. “Create a constant named myAge and initialize it with your age.”
  // 2. “Write an if statement to print out “Teenager” if your age is between 13 and 19, and “Not a teenager” if your age is not between 13 and 19.”

  const myAgeAgain = 33;
  if (myAgeAgain > 13 && myAgeAgain < 19) {
    print("Teenager.");
  } else {
    print("Not a teenager.");
  }
  print("---------------------------");

  // 1. “Use a ternary conditional operator to replace the else-if statement that you used above. Set the result to a variable named answer.”

  const teenager = (myAgeAgain > 13 && myAgeAgain < 19)
      ? "Teenager"
      : "Not a teenager.";
  print(teenager);
  print("---------------------------");

  // 1. “Make an enum called AudioState and give it values to represent playing, paused and stopped states.”
  // >>> see above;
  // 2. “Create a constant called audioState and give it an AudioState value. Write a switch statement that prints a message based on the value.”

  const audioState = AudioState.playing;
  switch (audioState) {
    case AudioState.playing:
      print("▶️");
      break;
    case AudioState.paused:
      print("⏸️");
      break;
    case AudioState.stopped:
      print("⏹️");
      break;
  }
  print("---------------------------");

  // 1. “Create a variable named counter and set it equal to 0. Create a while loop with the condition counter < 10.”
  // 2. “The loop body should print out “counter is X” (where X is replaced with the value of counter) and then increment counter by 1.”

  var counter = 0;
  while (counter < 10) {
    print("Counter is $counter.");
    counter += 1;
  }
  print("---------------------------");

  // 1. “Write a for loop starting at 1 and ending with 10 inclusive. Print the square of each number.”

  for (var i = 1; i <= 10; i++) {
    var square = pow(i, 2);
    print(" Square of $i is $square");
  }
  print("---------------------------");

  // 1. “Write a for-in loop to iterate over the following collection of numbers. Print the square root of each number.”

  const numbers = [1, 2, 4, 7];

  for (var number in numbers) {
    var squareRoot = sqrt(number);
    print("Square root of $number is $squareRoot.");
  }
  print("---------------------------");

  // 1. “Repeat previous Mini-exercise using a forEach loop.”

  numbers.forEach((number) {
    var squareRoot = sqrt(number);
    print("Square root of $number is $squareRoot.");
  });
  print("---------------------------");

  print("Challenges!");
  print("---------------------------");

  print("Challenge 1: Find the error!");

  // 1. “What’s wrong with the following code?”

//   “const firstName = 'Bob';
//    if (firstName == 'Bob') {
//        const lastName = 'Smith';
//    } else if (firstName == 'Ray') {
//        const lastName = 'Wenderlich';
//    }
//    final fullName = firstName + ' ' + lastName;”


  const firstName = 'Bob';
  var lastName = "";
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = firstName + ' ' + lastName;
  print("Full name is $fullName");
  print("---------------------------");

  print("Challenge 2: Boolean challenge!");

  // 1.  “In each of the following statements, what is the value of the Boolean expression?”

  const firstStatement = true && true;
  print("Value is $firstStatement.");
  const secondStament = false || false;
  print("Value is $secondStament.");
  const thirdStatement = (true && 1 != 2) || (4 > 3 && 100 < 1);
  print("Value is $thirdStatement.");
  const forthStatement = ((10 / 2) > 3) && ((10 % 2) == 0);
  print("Value is $forthStatement");
  print("---------------------------");

  print("Challenge 3: Next power of two!");

  // 1. “Given a number, determine the next power of two above or equal to that number.”
  // 2. “Powers of two are the numbers in the sequence of 2¹, 2², 2³, and so on.”
  // 3. “You may also recognize the series as 1, 2, 4, 8, 16, 32, 64...”

  const n = 12;
  for (var i = 1; i < 10; i++) {
    var powerOfTwo = pow(2, i);
    if (powerOfTwo >= n) {
      print(powerOfTwo);
      break;
    }
  }
  print("---------------------------");

  print("Challenge 4: Fibonacci number!");

  // 1. “Calculate the nth Fibonacci number.
  // 2. "The Fibonacci sequence starts with 1, then 1 again, and then all subsequent numbers in the sequence are simply the previous two values in the sequence added together (1, 1, 2, 3, 5, 8...)”

  // Fibonacci sequence algo (simple) >>> calculate the next number by adding the current number to the old number;

  int num = 9;
  int a = 1;
  int b = 0;
  int temp = 0;

  for (var i = 0; i < 30; i++) {
    temp = a;
    a = a + b;
    b = temp;
    if ( i == num) {
      print("The $num-th number in the Fibonacci sequence is $b.");
      break;
    }
  }
  print("---------------------------");

  print("Challenge 4: How many times?");

  // 1. In the following for loop, what will be the value of sum, and how many iterations will happen?
  // var sum = 0;
  // for (var i = 0; i <= 5; i++) {
  //   sum += i;
  //   }

  var sum = 0;
  var iterations = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
    print("Sum is $sum.");
    iterations = i + 1;
    print("Iteration is $iterations.");
  }
  print("The sum is $sum, and the number of iterations is $iterations.");
  print("---------------------------");

  print("Challenge 4: The final countdown");

  // 1. Print a countdown from 10 to 0.

  for (var i = 0; i <= 10; i++) {
    var countdown = 10 - i;
    print(countdown);
  }
  print("---------------------------");

  print("Challenge 4: Print a sequence.");

  // 1. Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0;

  var value = 0.0;

  for (var i = 1; i <= 10; i++) {
    value += 0.1;
    print(value.toStringAsFixed(1));
  }
  print("---------------------------");

}