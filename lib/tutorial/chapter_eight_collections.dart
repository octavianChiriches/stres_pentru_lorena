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
  print("---------------------------------------?git status --------------------------------");

}