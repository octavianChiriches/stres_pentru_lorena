import 'dart:math';

// Chapter 5: Functions

void main() {

  // Optional parameters;

  String fullName(String first, String last, [String? title]) {
    if (title != null) {
      return "$title $first $last";
    } else {
      return "$first $last";
    }
  }

  print(fullName("Ray", "Wenderlich"));
  print(fullName("Albert", "Einstein", "Professor:"));

  // Default values;

  bool withinTolerance(int value, [int min = 0, int max = 10]) {
    return min <= value && value <= max;
  }

  print(withinTolerance(7));

  // Named parameters;

  bool withinToleranceAgain(int value, {int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  print(withinToleranceAgain(7));

  // Required parameters;

  bool withinToleranceRequiredParamater(
      {required int value, int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  // print(withinToleranceRequiredParamater()); - 40:41: Error: Required named parameter 'value' must be provided.

  print("---------------------------");
  print("Mini Exercises;");
  print("---------------------------");

  print("1. Write a function named youAreWonderful, with a String parameter called name.");
  print("2. It should return a string using name, and say something like “You’re wonderful, Bob.");

  String youAreWonderful(String name) {
    return "You’re wonderful, $name.";
  }
  print(youAreWonderful("Bob"));
  print("---------------------------");

  print("1. Add another int parameter to that function called numberPeople so that the function returns something like “You’re wonderful, Bob. 10 people think so.");

  String numberPeople(String name, int numberOfPeople) {
    return "You’re wonderful, $name. $numberOfPeople people think so.";
  }
  print(numberPeople("Bob", 10));
  print("---------------------------");

  print("1. Make both inputs named parameters.");
  print("2. Make name required and set numberPeople to have a default of 30.");

  String numberPeopleNamedRequired ({required String name, int numberOfPeople = 30}) {
    return "You’re wonderful, $name. $numberOfPeople people think so.";
  }
  print(numberPeopleNamedRequired(name: "Bob"));
  print("---------------------------");

  print("1. Change the youAreWonderful function in the first mini- exercise of this chapter into an anonymous function.");
  print("2. Assign it to a variable called wonderful.");

  final wonderfull = ({required String name, int numberPeople = 10}) {
    return 'You are wonderfull $name. $numberPeople people think so.';
  };

  print(wonderfull(name: "John"));
  print("---------------------------");

  print("1. Using forEach, print a message telling the people in the following list that they’re wonderful.");
  print("'Chris', 'Tiffani', 'Pablo'");

  const people = ['Chris', 'Tiffani', 'Pablo'];

  people.forEach((person) {
    print("$person you are beautiful!!!");
  });
  print("---------------------------");

  print("1.Change the forEach loop in the previous “You’re wonderful” mini-exercise to use arrow syntax.");

  print("people.forEach((person) => print('\$person you are beautiful!!!'));");
  print("---------------------------");

  print("Write a function that checks if a number is prime.");

  String isPrime (int number) {

    var square = sqrt(number);

    if (number <= 1) {
      return "$number is not prime.";
    }

    if (number % 2 == 0) {
      return "$number is not prime.";
    }

    for (int i = 3; i <= sqrt(number); i++) {
      if (number % i == 0) {
        return "$number is not prime.";
      }
    }

    return "$number is a prime number!";
  };

  print(isPrime(9));
  print("---------------------------");

  print("Write a function named repeatTask with the following definition:");
  print("int repeatTask(int times, int input, Function task)");
  print("It repeats a given task on input for times number of times.");
  print("1. Pass an anonymous function to repeatTask to square the input of 2 four times.");
  print("2. Confirm that you get the result 65536, since 2 squared is 4, 4 squared is 16, 16 squared is 256, and 256 squared is 65536.");

  int repeatTask(int times, int input , Function task) {

    int result = task(input);

    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  final result = repeatTask(4, 2, (num input) {
    return input * input;
  });

  print("The result is $result.");
  print("---------------------------");

  print("Update Challenge 2 to use arrow syntax.");

  print("""
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }
  // The anonymous function now uses arrow syntax.
  final result = repeatTask(4, 2, (num input) => input * input);

  print(result);
  """);

}