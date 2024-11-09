import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:student_automation_system/app/app.router.dart';

class SplashVM extends BaseViewModel {
  String logo = 'assets/logo/Logo.png';
  String gif = 'assets/logo/Logo_animation.gif';
  final navigationService = NavigationService();

  initialize() async {
    await Future.delayed(const Duration(seconds: 5));
    navigateToView();
  }

  navigateToView() {
    navigationService.navigateToStudentHomeScreen();
  }
}
