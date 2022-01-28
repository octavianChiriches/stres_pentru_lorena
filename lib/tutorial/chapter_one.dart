import 'dart:math';

// Chapter 2: Expressions, Variables & Constants

void main() {
  const myConstant = 10;
  print(myConstant);

  final hoursTillMidnight = DateTime
      .now()
      .hour;
  print(hoursTillMidnight);

  // 1. Declare a constant of type int called myAge and set it to your age.
  // 2. Declare a variable of type double called averageAge.
  // 3. Initially, set the variable to your own age.
  // 4. Then, set it to the average of your age and your best friend’s age.
  // 5. Create a constant called testNumber and initialize it with whatever integer you’d like.
  // 6. Next, create another constant called evenOdd and set it equal to testNumber modulo 2.
  // 7. Now change testNumber to various numbers. What do you notice about evenOdd?

  const myAge = 33;
  double averageAge = 33;
  averageAge = 31;
  const testNumber = 7;
  const evenOdd = testNumber % 2;
  print(evenOdd);
  print("Remainder is assigned to evenOdd.");

  // 1. Declare a constant int called myAge and set it equal to your age.
  // 2. Also declare an int variable called dogs and set that equal to the number of dogs you own.
  // 3. 3. Then imagine you bought a new puppy and increment the dogs variable by one.

  int myAge2 = 33;
  int dogs = 0;
  dogs += 1;
  print(dogs);

  // 1.Modify the first line so that the code compiles. Did you use var, int, final or const?
  // age = 16;
  // print(age);
  // age = 30;
  // print(age);

  int age = 16;
  print(age);
  age = 30;
  print(age);

  // Consider the following code:
  // const x = 46;
  // const y = 10;
  // Work out what each answer equals when you add the following lines of code to the code above:
  // const answer1 = (x * 100) + y;
  // const answer2 = (x * 100) + (y * 100);
  // const answer3 = (x * 100) + (y / 10);

  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y;
  print(answer1);
  const answer2 = (x * 100) + (y * 100);
  print(answer2);
  const answer3 = (x * 100) + (y / 10);
  print(answer3);

  // 1. Declare three constants called rating1, rating2 and rating3 of type double and assign each a value.
  // 2. Calculate the average of the three and store the result in a constant named averageRating.

  const rating1 = 56;
  const rating2 = 43;
  const rating3 = 27;
  num averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  // A quadratic equation is something of the form: a⋅x2 + b⋅x + c = 0.
  // The values of x which satisfy this can be solved by using the equation: x = (-b ± sqrt(b2 - 4⋅a⋅c)) / (2⋅a).
  // Declare three constants named a, b and c of type double.
  // Then calculate the two values for x using the equation above (noting that the ± means plus or minus, so one value of x for each).
  // Store the results in constants called root1 and root2 of type double.

  double a = 3;
  double b = 4;
  double c = 5;

  double root1 = (-b + sqrt(pow(b, 2) - (4*a*c))) / (2*a);
  print("$root1");
  double root2 = (-b - sqrt(pow(b, 2) - (4*a*c))) / (2*a);
  print("$root2");

}