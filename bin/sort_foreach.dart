void main(List<String> arguments) {

  var persons = <Person>[
    Person('Administrator', 32),
    Person('User', 52),
    Person('Administrator', 20),
    Person('Merchant', 52),
    Person('Administrator', 23),
    Person('User', 22),
    Person('Merchant', 22),
    Person('User', 12),
    Person('Merchant', 55)
  ];

  // Integer
  //persons.sort((p1, p2) => p1.age - p2.age);

  // String
  //persons.sort((p1, p2) => p1.role.compareTo(p2.role));

  // Custom Sort
  persons.sort((p1, p2) {
    if (p1.role.compareTo(p2.role) != 0) {
      return p1.role.compareTo(p2.role);
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  // Custom Sorth + roleWeight
  persons.sort((p1, p2) {
    if (p1.roleWeight - p2.roleWeight != 0) {
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleWeight {
    switch (role) {
      case 'Merchant':
        return 1;
      case 'Administrator':
        return 2;
      default:
        return 3;
    }
  }
}
