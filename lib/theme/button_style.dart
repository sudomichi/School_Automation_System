import 'package:flutter/material.dart';
import 'package:student_automation_system/theme/color.dart';

class CustomButtonStyle {
  static var b1style = ElevatedButton.styleFrom(
    backgroundColor: AppColors.buttonColor,
    fixedSize: const Size(360, 60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static var b2style = ElevatedButton.styleFrom(
    backgroundColor: AppColors.buttonColor,
    fixedSize: const Size(180, 60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
