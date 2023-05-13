import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:merchant_app/core/constants/regex_constants.dart';
import 'package:merchant_app/core/constants/utils_constants.dart';

extension ExString on String {
  bool isValidPhoneNumer() {
    if (isEmpty) {
      return false;
    } else {
      final regex = RegExp(RegexConstants.validPhoneNumer);
      return regex.hasMatch(this);
    }
  }

  String capitalize() {
    if (length > 0) {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    } else {
      return this;
    }
  }

  void showSnackBar(BuildContext context, {int milliseconds = 1400}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(this),
        duration: Duration(
          milliseconds: milliseconds,
        ),
      ),
    );
  }

  bool validateEmail() {
    if (isEmpty) {
      return false;
    } else {
      final regex = RegExp(RegexConstants.validateEmail);
      return regex.hasMatch(this);
    }
  }

  bool validateMPIN() {
    if (isEmpty || length < 4) {
      return false;
    } else {
      final regex = RegExp(RegexConstants.validateNumberOnly);
      return regex.hasMatch(this);
    }
  }

  String formatDate({String defaultFormat = UtilsConstants.defaultFormat}) {
    try {
      if (this == "" || this == "null") {
        return "";
      }
      final formatter = DateFormat(defaultFormat);
      return formatter.format(DateTime.parse(this).toLocal());
    } on Exception catch (e) {
      debugPrint(e.toString());
      return "";
    }
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(" ")
      .map((str) => str.toCapitalized())
      .join(" ");
}
