bool isEmailValid(String email) {
  final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  return emailRegex.hasMatch(email);
}

class Validations {
  static emailValidation(String email) {
    if (email.isEmpty) {
      return "This field is required";
    } else if (isEmailValid(email) == false) {
      return "Enter valid email";
    } else {
      return null;
    }
  }

  static passwordValidation(String password) {
    if (password.isEmpty) {
      return "This field is required";
    } else if (password.length < 6) {
      return "Too short password provided";
    } else {
      return null;
    }
  }
}
