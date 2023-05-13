class RegexConstants {
  static const validPhoneNumer = r'^(\+\d{1,3}[- ]?)?\d{10}$';
  static const validateEmail =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";

  static const validateNumberOnly = r'^[0-9]+$';
}
