import 'package:sort_foreach/sort_foreach.dart' as sort_foreach;

void main(List<String> arguments) {
  print('Hello world: ${sort_foreach.calculate()}!');

  var persons = <Person>[
    Person('Administrator', 32),
    Person('Supplier', 16),
    Person('Operator', 18)
  ];

  persons.sort();

  persons.forEach((element) {
    print(element.role + '-' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);
}
