///Task #1: improving logic
///Task #2: unit tests
///
/// AI request #1: in code below add rules to create an object only with valid email
///
/// AI request #2: provide ultimate list of test cases to unit test for the code above with a few examples of tests

//Initial implementation
// class EmailContainer {
//   final String email;
//
//   EmailContainer({
//     required this.email,
//   });
// }

//Modified implementation
class EmailContainer {
  final String email;

  EmailContainer({
    required this.email,
  }) {
    if (!_isValidEmail(email)) {
      throw const FormatException('Invalid email format');
    }
  }

  static bool _isValidEmail(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }
}
