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

}