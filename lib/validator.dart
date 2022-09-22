class Validator {
  RegExp _isEmail = new RegExp(r"^[a-z0-9@]");

  bool checlemail(String str) {
    return _isEmail.hasMatch(str);
  }
}
