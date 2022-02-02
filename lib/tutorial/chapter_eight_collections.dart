void main() {

  print("Mini-exercises");

  print("-----------------------------------------------------------------------");
  print("1. Create an empty list of type String.");
  print("2. Name it months.");
  print("3. Use the add method to add the names of the twelve months.");

  final months = <String>[];

  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add("August");
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');

  print(months);
  print("-----------------------------------------------------------------------");

  print("1. Make an immutable list with the same elements as in Mini-exercise 1.");

  const immutableMonths = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  // immutableMonths.add('value');
  print("-----------------------------------------------------------------------");

  print("1. Use collection for to create a new list with the month names in all uppercase.");

  var bigMonths = [
    for (var month in immutableMonths)month.toUpperCase()
  ];

  print(bigMonths);
  print("-----------------------------------------------------------------------");

  print("1. Create a map with the following keys: name, profession, country and city. ");
  print("2. For the values, add your own information.");

  final myInfo = {
    'name' : 'Leo',
    'profession' : 'Software Tester',
    'country' : 'Romania',
    'city' : 'Cluj-Napoca'
  };
  print(myInfo);
  print("-----------------------------------------------------------------------");

  print("1. You suddenly decide to move to Toronto, Canada.");
  print("2. Programmatically update the values for country and city.");

  myInfo['country'] = 'Canada';
  myInfo['city'] = 'Toronto';

  print(myInfo);
  print("-----------------------------------------------------------------------");

  print("1. Iterate over the map and print all the values.");

  for (final entry in myInfo.entries) {
    print('${entry.key} -> ${entry.value}');
  }
  print("-----------------------------------------------------------------------");

  print("Mini-exercises - Higher Order Methods");
  print("-----------------------------------------------------------------------");

  print("Given the following exam scores:");

  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  print(scores);
  print("-----------------------------------------------------------------------");


  print("1. Use sort to find the highest and lowest grades.");

  scores.sort();
  print(scores);
  print("-----------------------------------------------------------------------");

  print("2. Use where to find all the B grades, that is, all the scores between 80 and 90.");

  final bGrades = scores.where((score) => (80 < score) && (score < 90));
  print(bGrades);
  print("-----------------------------------------------------------------------");

  print("-----------------------------------------------------------------------");
  print("Challenges");
  print("-----------------------------------------------------------------------");

  print("Challenge 1: A unique request");
  print("1. Write a function that takes a paragraph of text and returns a collection of unique String characters that the text contains.");

  List <String> paragraph (String text) {

    print(text);
    var characters = <String>[];
    text.runes.forEach((c) {
      var ch = new String.fromCharCode(c);
      characters.add(ch);
    });
    return characters;
  }

  print(paragraph("Lorena"));
  print("-----------------------------------------------------------------------");

  print("Challenge 2: Counting on you");
  print("1. Repeat Challenge 1, but this time have the function return a collection that contains the frequency, or count, of every unique character.");

  Map <String, int> mapParagraph (String text) {

    print(text);
    var characters = <String>[];

    text.runes.forEach((c) {
      var ch = new String.fromCharCode(c);
      characters.add(ch);
    });

    var map = <String, int>{};

    characters.forEach((element) {
      if (!map.containsKey(element)) {
        map[element] = 1;
      } else if (map.containsKey(element)) {
        map.update(element, (value) => value + 1);
      }
    });

    return map;
  }

  print(mapParagraph('cocolino'));
  print("-----------------------------------------------------------------------");

  print("Challenge 3: Mapping users");
  print("1. Create a class called User with properties for id and name.");
  print("2. Make a List with three users, specifying any appropriate names and IDs you like.");
  print("3. Then write a function that converts your user list to a list of maps whose keys are id and name.");

  final List <User> users = [User("Lorena", 01), User("Luci", 02), User("Mark", 03)];

  List <Map<int, String>> convert() {
    return users.map((e) => {e.id: e.name}).toList();
  }
  print(convert());
}

class User {

  final String name;
  final int id;

  User(this.name, this.id);
}