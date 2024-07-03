import 'package:flutter/material.dart';
import 'package:justtest/utils/theme/widget_themes/textField_theme.dart';

class HAppTheme {
  HAppTheme._();

  static ThemeData customTheme = ThemeData(
      useMaterial3: true,
      inputDecorationTheme: HTextFormFieldTheme.customInputTheme);
}
