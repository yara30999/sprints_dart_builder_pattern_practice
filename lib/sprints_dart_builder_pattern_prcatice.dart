class User {
  String firstName;
  String lastName;
  int? age;
  String? phone;

  User._builder(UserBuilder builder)
    : firstName = builder._firstName,
      lastName = builder._lastName,
      age = builder._age,
      phone = builder._phone;

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, age: $age, phone: $phone)';
  }
}

class UserBuilder {
  String _firstName;
  String _lastName;
  int? _age;
  String? _phone;

  UserBuilder(this._firstName, this._lastName);

  UserBuilder setFirstName(String firstName) {
    _firstName = firstName;
    return this;
  }

  UserBuilder setLastName(String lastName) {
    _lastName = lastName;
    return this;
  }

  UserBuilder setAge(int age) {
    _age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    _phone = phone;
    return this;
  }

  String get firstName => _firstName;
  String get lastName => _lastName;
  int get age => _age ?? 0;
  String get phone => _phone ?? '';

  User build() {
    return User._builder(this);
  }
}

void main() {
  UserBuilder userBuilder = UserBuilder("yara", "nasser");
  User user1 = userBuilder.build();
  User user2 = userBuilder.setAge(30).build();
  User user3 = userBuilder.setAge(16).setPhone('12345600256').build();
  User user4 = userBuilder.setFirstName("noor").build();
  User user5 = userBuilder.setLastName("Ali").build();

  print(user1);
  print(user2);
  print(user3);
  print(user4);
  print(user5);
}
