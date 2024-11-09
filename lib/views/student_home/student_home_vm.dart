import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:student_automation_system/app/app.router.dart';
// import 'package:student_automation_system/main.dart';
import 'package:student_automation_system/theme/color.dart';
import 'package:student_automation_system/theme/fonts_style.dart';

class StudentHomeVM extends BaseViewModel {
  final navigationService = NavigationService();
  String logo = "assets/logo/Logo.png";
  String person = 'assets/logo/Student.png';

  navigateToSplash() {
    navigationService.navigateToSplashScreen();
  }

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  Widget DropdownCourse() {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Text('Select Item',
            style: Style.regular14ptb
                .copyWith(fontSize: 4.sp, color: AppColors.textColor1)),
        items: items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          selectedValue = value;
          rebuildUi();
        },
        buttonStyleData: ButtonStyleData(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 0.1.sh,
          width: 0.7.sw,
          // overlayColor: WidgetStatePropertyAll(AppColors.secondaryColor),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
      ),
    );
  }
}
