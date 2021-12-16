import 'package:extensions/main.dart';
import 'package:flutter/cupertino.dart';

extension Responsive on num {
  double get width =>
      this * MediaQuery.of(appKey.currentContext!).size.width / 375;
  double get height =>
      this * MediaQuery.of(appKey.currentContext!).size.height / 812;
}

extension StringEditor on String {
  String get capitalizeFirst =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String get convertToTitle {
    final List<String> words = split(' ');
    final capitalizedWords = words.map((word) {
      if (word.trim().isNotEmpty) {
        final String firstLetter = word.trim().substring(0, 1).toUpperCase();
        final String remainingLetters = word.trim().substring(1);

        return '$firstLetter$remainingLetters';
      }
      return '';
    });
    return capitalizedWords.join(' ');
  }
}
