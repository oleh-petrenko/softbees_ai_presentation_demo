abstract class User {
  String get displayable;
}

class UserImpl extends User {
  final String name;
  final String surname;
  final String age;
  final String? mail;

  UserImpl({
    required this.name,
    required this.surname,
    required this.age,
    this.mail,
  });

  @override
  String get displayable => '$name $surname $age\nmail: $mail';

  factory UserImpl.fromJson(Map<String, dynamic> json) {
    return UserImpl(
      name: json['name'],
      surname: json['surname'],
      age: json['age'],
      mail: json['mail'],
    );
  }
}
