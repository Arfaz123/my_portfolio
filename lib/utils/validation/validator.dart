class TextFieldValidation {
  TextFieldValidation._();

  static String? validation({
    String? value,
    String? message,
    bool isEmailValidator = false,
    bool isPasswordValidator = false,
    bool isPhoneNumberValidator = false,
    bool isAadharNumValidator = false,
  }) {
    if (value!.isEmpty) {
      return "$message is required!";
    }
    if (isPhoneNumberValidator == true) {
      if (value.isEmpty) {
        return "$message is required!";
      } else if (value.length < 10 || value.length > 10) {
        return 'Phone number must be 10 character';
      }
    }
    if (isAadharNumValidator == true) {
      if (value.isEmpty) {
        return "$message is required!";
      } else if (value.length < 12 || value.length > 12) {
        return 'Aadhar number must be 12 character';
      }
    }
    if (isEmailValidator == true) {
      if (value.isEmpty) {
        return "$message is required!";
      } else if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value)) {
        return 'Enter Valid $message';
      }
    } else if (isPasswordValidator == true) {
      if (value.isEmpty) {
        return "$message is required!";
      } else if (!RegExp(
              r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
          .hasMatch(value)) {
        if (value.length < 6) {
          return 'Password must have at least 6 characters';
        } else if (!value.contains(RegExp(r'[A-Za-z]'))) {
          return 'Password must have at least one alphabet characters';
        } else if (!value.contains(RegExp(r'[0-9]'))) {
          return 'Password must have at least one number characters';
        }
      }
    }

    return null;
  }
}
