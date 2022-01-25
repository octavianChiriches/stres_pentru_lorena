import 'dart:math';

// Chapter 3: Types & Operations

void main() {

  // Exercises
  print("Exercises!");
  // 1. “Create a string constant called firstName and initialize it to your first name.”
  // 2. “Also create a string constant called lastName and initialize it to your last name.”

  const firstName = "Octavian - Leonard";
  const lastName = " Chiriches";

  // 1. “Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.”

  var fullName = StringBuffer();
  fullName.write(firstName);
  fullName.write(lastName);
  print(fullName);

  // 1. “Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. ”
  // 2. “For example, Ray Wenderlich’s string would read: Hello, my name is Ray Wenderlich.”

  var myDetails = "Hello, my name is $fullName!";
  print(myDetails);

  // exercise porpose: constant needed;

  const fullNameConstant = firstName + lastName;
  const myDetailsAgain = "Hello, my name is $fullNameConstant!";
  print(myDetailsAgain);
  print("--------------------------");

  // Challenges
  print("Challenges");
  print("--------------------------");

  // Challenge 1: Teacher's gradding!
  print("Challenge 1: Teacher's gradding!");
  // 1. “You’re a teacher, and in your class, attendance is worth 20% of the grade, the homework is worth 30% and the exam is worth 50%.”
  // 2. “Your student got 90 points for her attendance, 80 points for her homework and 94 points on her exam.”
  // 3. “Calculate her grade as an integer percentage rounded down.”
  // >>> we start from the concept that if the student has 100 points at each section the grade would be 10;
  // >>> do the maths: worth percentage from what points we have;

  int attendance = 90;
  int homework = 80;
  int exam = 94;
  int attendancePercentage = 20;
  int homeworkPercentage = 30;
  int examPercentage = 50;

  double attendanceResult = (attendancePercentage*attendance) / 100;
  print(attendanceResult);
  double homeworkResult = (homeworkPercentage*homework) / 100;
  print(homeworkResult);
  double examResult = (examPercentage*exam) / 100;
  print(examResult);
  double finalGrade = attendanceResult + homeworkResult + examResult;
  print("Final grade is $finalGrade");
  print("--------------------------");

  //“Challenge 2: Same same, but different”
  print("Challenge 2: Same same, but different");
  // 1. “This string has two flags that look the same.
  // 2. But they aren’t! One of them is the flag of Chad and the other is the flag of Romania.
  // 3. Hint: Romania’s regional indicator sequence is RO, and R is 127479 in decimal.
  //     Chad, which is Tishād in Arabic and Tchad in French, has a regional indicator sequence of TD.
  //     Sequence letter T is 127481 in decimal.”

  const twoCountries = '🇹🇩🇷🇴';
  var unicodeCodePoints = twoCountries.runes;
  print("Unicode code points are $unicodeCodePoints.");
  print("--------------------------");

  // “Challenge 3: How many?
  print("Challenge 3: How many?");
  // Given the following string:

  const vote = 'Thumbs up! 👍🏿';

  // How many UTF-16 code units are there?

  var codeUnitsCount = vote.codeUnits.length;
  print("Lenght of UTF-16 code units is $codeUnitsCount.");

  // How many Unicode code points are there?

  var codePointsCount = vote.runes.length;
  print("Code points for string declared is $codePointsCount.");

  // How many Unicode grapheme clusters are there?”
  print("Characters package needed.");
  print("--------------------------");

  // Challenge 4: Find the error
  print("Challenge 4: Find the error");
  //What is wrong with the following code?

  const newName = 'Ray';
//   newName += ' Wenderlich';
  print(newName);
  print("Wenderlich string needs to be declared in order to use concatenation");
  const wenderlich = " Wenderlich";
  const completeName = newName + wenderlich;
  print(completeName);
  print("--------------------------");

  // Challenge 5: What type?
  print("Challenge 5: What type?");
  // What’s the type of value?

  const value = 10 / 2;
  print(value.runtimeType);
  print("--------------------------");

  // Challenge 6: In summary
  print("Challenge 6: In summary");
  //What is the value of the constant named summary?

  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print("Value is ${number * multiplier}");

}